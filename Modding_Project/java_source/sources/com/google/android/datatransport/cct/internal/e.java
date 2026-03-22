package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.ClientInfo;
/* compiled from: AutoValue_ClientInfo.java */
/* loaded from: classes4.dex */
final class e extends ClientInfo {

    /* renamed from: a  reason: collision with root package name */
    private final ClientInfo.ClientType f17103a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.cct.internal.a f17104b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_ClientInfo.java */
    /* loaded from: classes4.dex */
    public static final class b extends ClientInfo.a {

        /* renamed from: a  reason: collision with root package name */
        private ClientInfo.ClientType f17105a;

        /* renamed from: b  reason: collision with root package name */
        private com.google.android.datatransport.cct.internal.a f17106b;

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo a() {
            return new e(this.f17105a, this.f17106b);
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo.a b(@Nullable com.google.android.datatransport.cct.internal.a aVar) {
            this.f17106b = aVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo.a c(@Nullable ClientInfo.ClientType clientType) {
            this.f17105a = clientType;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    @Nullable
    public com.google.android.datatransport.cct.internal.a b() {
        return this.f17104b;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    @Nullable
    public ClientInfo.ClientType c() {
        return this.f17103a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientInfo)) {
            return false;
        }
        ClientInfo clientInfo = (ClientInfo) obj;
        ClientInfo.ClientType clientType = this.f17103a;
        if (clientType != null ? clientType.equals(clientInfo.c()) : clientInfo.c() == null) {
            com.google.android.datatransport.cct.internal.a aVar = this.f17104b;
            if (aVar == null) {
                if (clientInfo.b() == null) {
                    return true;
                }
            } else if (aVar.equals(clientInfo.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        ClientInfo.ClientType clientType = this.f17103a;
        int i10 = 0;
        if (clientType == null) {
            hashCode = 0;
        } else {
            hashCode = clientType.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        com.google.android.datatransport.cct.internal.a aVar = this.f17104b;
        if (aVar != null) {
            i10 = aVar.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f17103a + ", androidClientInfo=" + this.f17104b + "}";
    }

    private e(@Nullable ClientInfo.ClientType clientType, @Nullable com.google.android.datatransport.cct.internal.a aVar) {
        this.f17103a = clientType;
        this.f17104b = aVar;
    }
}
