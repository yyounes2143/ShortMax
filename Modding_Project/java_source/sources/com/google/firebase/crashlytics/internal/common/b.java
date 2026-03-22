package com.google.firebase.crashlytics.internal.common;

import java.io.File;
/* compiled from: AutoValue_CrashlyticsReportWithSessionId.java */
/* loaded from: classes5.dex */
final class b extends b0 {

    /* renamed from: a  reason: collision with root package name */
    private final e8.f0 f20690a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20691b;

    /* renamed from: c  reason: collision with root package name */
    private final File f20692c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(e8.f0 f0Var, String str, File file) {
        if (f0Var != null) {
            this.f20690a = f0Var;
            if (str != null) {
                this.f20691b = str;
                if (file != null) {
                    this.f20692c = file;
                    return;
                }
                throw new NullPointerException("Null reportFile");
            }
            throw new NullPointerException("Null sessionId");
        }
        throw new NullPointerException("Null report");
    }

    @Override // com.google.firebase.crashlytics.internal.common.b0
    public e8.f0 b() {
        return this.f20690a;
    }

    @Override // com.google.firebase.crashlytics.internal.common.b0
    public File c() {
        return this.f20692c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.b0
    public String d() {
        return this.f20691b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        if (this.f20690a.equals(b0Var.b()) && this.f20691b.equals(b0Var.d()) && this.f20692c.equals(b0Var.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f20690a.hashCode() ^ 1000003) * 1000003) ^ this.f20691b.hashCode()) * 1000003) ^ this.f20692c.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f20690a + ", sessionId=" + this.f20691b + ", reportFile=" + this.f20692c + "}";
    }
}
