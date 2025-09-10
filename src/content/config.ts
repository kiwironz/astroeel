import { defineCollection, z } from 'astro:content';

const projects = defineCollection({
  schema: z.object({
    title: z.string(),
    description: z.string(),
    date: z.string(),
    featured: z.boolean().default(false),
    category: z.string(),
    tags: z.array(z.string()),
    heroImage: z.string().optional().default("image-00.jpg"), // Optional, defaults to image-00.jpg
    client: z.string().optional(),
    challenge: z.string().optional(),
    solution: z.string().optional(),
    technologies: z.array(z.string()),
    testimonial: z.object({
      text: z.string(),
      author: z.string(),
      company: z.string().optional()
    }).optional(),
    specifications: z.object({
      power: z.string().optional(),
      range: z.string().optional(),
      battery: z.string().optional(),
      connectivity: z.string().optional(),
      sensors: z.string().optional(),
      operating_temp: z.string().optional()
    }).optional()
  })
});

export const collections = {
  projects
};