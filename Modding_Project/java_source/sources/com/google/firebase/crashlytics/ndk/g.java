package com.google.firebase.crashlytics.ndk;

import com.google.firebase.crashlytics.ndk.f;
import e8.f0;
import java.io.File;
/* compiled from: SessionFilesProvider.java */
/* loaded from: classes5.dex */
class g implements z7.h {

    /* renamed from: a  reason: collision with root package name */
    private final f f20922a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.f20922a = fVar;
    }

    @Override // z7.h
    public File a() {
        return this.f20922a.f20911f;
    }

    @Override // z7.h
    public f0.a b() {
        f.c cVar = this.f20922a.f20906a;
        if (cVar != null) {
            return cVar.f20921b;
        }
        return null;
    }

    @Override // z7.h
    public File c() {
        return this.f20922a.f20906a.f20920a;
    }

    @Override // z7.h
    public File d() {
        return this.f20922a.f20910e;
    }

    @Override // z7.h
    public File e() {
        return this.f20922a.f20912g;
    }

    @Override // z7.h
    public File f() {
        return this.f20922a.f20909d;
    }

    @Override // z7.h
    public File g() {
        return this.f20922a.f20908c;
    }
}
