import joblib

if __name__ == "__main__":
    joblib.Parallel(n_jobs=2)(
        joblib.delayed(print)(f"Hello {i}!")
        for i in range(2)
    )
