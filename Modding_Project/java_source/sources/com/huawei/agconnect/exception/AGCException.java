package com.huawei.agconnect.exception;
/* loaded from: classes5.dex */
public abstract class AGCException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private int f21758a;

    /* renamed from: b  reason: collision with root package name */
    private String f21759b;

    @Override // java.lang.Throwable
    public String getMessage() {
        return " code: " + this.f21758a + " message: " + this.f21759b;
    }
}
