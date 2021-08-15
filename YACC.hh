/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     STATE = 258,
     COLON = 259,
     IP = 260,
     AUTOINDEX = 261,
     PATH = 262,
     NUMBER = 263,
     ROOT = 264,
     LIMIT_EXCEPT = 265,
     EQUAL = 266,
     SERVER = 267,
     LISTEN = 268,
     SERVER_NAME = 269,
     LOCATION = 270,
     ERROR_PAGE = 271,
     CLIENT_MAX_BODY_SIZE = 272,
     WORD = 273,
     FILENAME = 274,
     QUOTE = 275,
     OBRACE = 276,
     EBRACE = 277,
     SEMICOLON = 278
   };
#endif
/* Tokens.  */
#define STATE 258
#define COLON 259
#define IP 260
#define AUTOINDEX 261
#define PATH 262
#define NUMBER 263
#define ROOT 264
#define LIMIT_EXCEPT 265
#define EQUAL 266
#define SERVER 267
#define LISTEN 268
#define SERVER_NAME 269
#define LOCATION 270
#define ERROR_PAGE 271
#define CLIENT_MAX_BODY_SIZE 272
#define WORD 273
#define FILENAME 274
#define QUOTE 275
#define OBRACE 276
#define EBRACE 277
#define SEMICOLON 278




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

