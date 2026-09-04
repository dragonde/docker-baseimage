# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

"Base Image para Ubuntu" — a minimal customized Ubuntu base Docker image used as a foundation for other images in this account (e.g. `docker-nginx`, `docker-nginx-php`).

## Layout

- `Dockerfile` — the base image definition.
- `download_baseimage` — fetches/prepares the base.
- `build_all.sh` — build helper.
