package com.google.firebase.remoteconfig.internal;
/* compiled from: FirebaseRemoteConfigValueImpl.java */
/* loaded from: classes5.dex */
public class u implements f9.j {

    /* renamed from: a  reason: collision with root package name */
    private final String f21487a;

    /* renamed from: b  reason: collision with root package name */
    private final int f21488b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(String str, int i10) {
        this.f21487a = str;
        this.f21488b = i10;
    }

    private void b() {
        if (this.f21487a != null) {
            return;
        }
        throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
    }

    @Override // f9.j
    public String a() {
        if (this.f21488b == 0) {
            return "";
        }
        b();
        return this.f21487a;
    }
}
