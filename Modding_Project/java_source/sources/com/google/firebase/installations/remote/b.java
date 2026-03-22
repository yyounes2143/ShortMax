package com.google.firebase.installations.remote;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.TokenResult;
/* compiled from: AutoValue_TokenResult.java */
/* loaded from: classes5.dex */
final class b extends TokenResult {

    /* renamed from: a  reason: collision with root package name */
    private final String f21071a;

    /* renamed from: b  reason: collision with root package name */
    private final long f21072b;

    /* renamed from: c  reason: collision with root package name */
    private final TokenResult.ResponseCode f21073c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_TokenResult.java */
    /* renamed from: com.google.firebase.installations.remote.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0309b extends TokenResult.a {

        /* renamed from: a  reason: collision with root package name */
        private String f21074a;

        /* renamed from: b  reason: collision with root package name */
        private long f21075b;

        /* renamed from: c  reason: collision with root package name */
        private TokenResult.ResponseCode f21076c;

        /* renamed from: d  reason: collision with root package name */
        private byte f21077d;

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult a() {
            if (this.f21077d == 1) {
                return new b(this.f21074a, this.f21075b, this.f21076c);
            }
            throw new IllegalStateException("Missing required properties: tokenExpirationTimestamp");
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult.a b(TokenResult.ResponseCode responseCode) {
            this.f21076c = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult.a c(String str) {
            this.f21074a = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult.a d(long j10) {
            this.f21075b = j10;
            this.f21077d = (byte) (this.f21077d | 1);
            return this;
        }
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    @Nullable
    public TokenResult.ResponseCode b() {
        return this.f21073c;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    @Nullable
    public String c() {
        return this.f21071a;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    @NonNull
    public long d() {
        return this.f21072b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenResult)) {
            return false;
        }
        TokenResult tokenResult = (TokenResult) obj;
        String str = this.f21071a;
        if (str != null ? str.equals(tokenResult.c()) : tokenResult.c() == null) {
            if (this.f21072b == tokenResult.d()) {
                TokenResult.ResponseCode responseCode = this.f21073c;
                if (responseCode == null) {
                    if (tokenResult.b() == null) {
                        return true;
                    }
                } else if (responseCode.equals(tokenResult.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f21071a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        long j10 = this.f21072b;
        int i11 = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        TokenResult.ResponseCode responseCode = this.f21073c;
        if (responseCode != null) {
            i10 = responseCode.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "TokenResult{token=" + this.f21071a + ", tokenExpirationTimestamp=" + this.f21072b + ", responseCode=" + this.f21073c + "}";
    }

    private b(@Nullable String str, long j10, @Nullable TokenResult.ResponseCode responseCode) {
        this.f21071a = str;
        this.f21072b = j10;
        this.f21073c = responseCode;
    }
}
