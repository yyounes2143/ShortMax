package com.ss.ttvideoengine.utils;

import androidx.annotation.NonNull;
/* loaded from: classes6.dex */
public class EngineException extends Exception {
    private final Error mError;

    public EngineException(@NonNull Error error) {
        super(error.toString());
        this.mError = error;
    }

    public Error getError() {
        return this.mError;
    }

    public EngineException(@NonNull Error error, Throwable th2) {
        super(error.toString(), th2);
        this.mError = error;
    }
}
