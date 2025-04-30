import express from 'express';
import cors from 'cors';
import helmet from 'helmet';
import dotenv from 'dotenv';
import movies from './movies.js';

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(helmet());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Basic root route
app.get('/', (req, res) => {
    res.json({ message: 'Welcome to the Movie API' });
});

// Error handling middleware
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).json({ message: 'Something went wrong!' });
});

// GET Movies
app.get('/movies', (req, res) => {
    res.json(movies)
})

// POST Movies
app.post('/movies', (req, res) => {
    const newMovie = {
        id: movies.length + 1,
        name: req.body.name,
        genre: req.body.genre,
        year: req.body.year,
        rating: req.body.rating,
        movieCover: req.body.movieCover,
    };
    movies.push(newMovie);
    res.status(201).json({
        message: 'Movie added successfully',
        movie: newMovie,
    });
})

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});

export default app
