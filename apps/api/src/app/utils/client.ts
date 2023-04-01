import { PrismaClient } from '@prisma/client'

console.log(process.env.TEST_DATABASE_URL)

const prisma = new PrismaClient({
  datasources: {
    db: {
      url: process.env.TEST_DATABASE_URL
    }
  }
})

export default prisma
