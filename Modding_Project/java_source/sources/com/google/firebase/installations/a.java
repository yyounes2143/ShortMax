package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.firebase.installations.f;
/* compiled from: AutoValue_InstallationTokenResult.java */
/* loaded from: classes5.dex */
final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final String f21011a;

    /* renamed from: b  reason: collision with root package name */
    private final long f21012b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21013c;

    /* compiled from: AutoValue_InstallationTokenResult.java */
    /* loaded from: classes5.dex */
    static final class b extends f.a {

        /* renamed from: a  reason: collision with root package name */
        private String f21014a;

        /* renamed from: b  reason: collision with root package name */
        private Long f21015b;

        /* renamed from: c  reason: collision with root package name */
        private Long f21016c;

        @Override // com.google.firebase.installations.f.a
        public f a() {
            String str = "";
            if (this.f21014a == null) {
                str = " token";
            }
            if (this.f21015b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.f21016c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new a(this.f21014a, this.f21015b.longValue(), this.f21016c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.f.a
        public f.a b(String str) {
            if (str != null) {
                this.f21014a = str;
                return this;
            }
            throw new NullPointerException("Null token");
        }

        @Override // com.google.firebase.installations.f.a
        public f.a c(long j10) {
            this.f21016c = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.firebase.installations.f.a
        public f.a d(long j10) {
            this.f21015b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.firebase.installations.f
    @NonNull
    public String b() {
        return this.f21011a;
    }

    @Override // com.google.firebase.installations.f
    @NonNull
    public long c() {
        return this.f21013c;
    }

    @Override // com.google.firebase.installations.f
    @NonNull
    public long d() {
        return this.f21012b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f21011a.equals(fVar.b()) && this.f21012b == fVar.d() && this.f21013c == fVar.c()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f21012b;
        long j11 = this.f21013c;
        return ((((this.f21011a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f21011a + ", tokenExpirationTimestamp=" + this.f21012b + ", tokenCreationTimestamp=" + this.f21013c + "}";
    }

    private a(String str, long j10, long j11) {
        this.f21011a = str;
        this.f21012b = j10;
        this.f21013c = j11;
    }
}
