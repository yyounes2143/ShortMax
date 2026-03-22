package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.r;
import java.util.List;
/* compiled from: AutoValue_LogRequest.java */
/* loaded from: classes4.dex */
final class k extends r {

    /* renamed from: a  reason: collision with root package name */
    private final long f17137a;

    /* renamed from: b  reason: collision with root package name */
    private final long f17138b;

    /* renamed from: c  reason: collision with root package name */
    private final ClientInfo f17139c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f17140d;

    /* renamed from: e  reason: collision with root package name */
    private final String f17141e;

    /* renamed from: f  reason: collision with root package name */
    private final List<q> f17142f;

    /* renamed from: g  reason: collision with root package name */
    private final QosTier f17143g;

    /* compiled from: AutoValue_LogRequest.java */
    /* loaded from: classes4.dex */
    static final class b extends r.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f17144a;

        /* renamed from: b  reason: collision with root package name */
        private Long f17145b;

        /* renamed from: c  reason: collision with root package name */
        private ClientInfo f17146c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f17147d;

        /* renamed from: e  reason: collision with root package name */
        private String f17148e;

        /* renamed from: f  reason: collision with root package name */
        private List<q> f17149f;

        /* renamed from: g  reason: collision with root package name */
        private QosTier f17150g;

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r a() {
            String str = "";
            if (this.f17144a == null) {
                str = " requestTimeMs";
            }
            if (this.f17145b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new k(this.f17144a.longValue(), this.f17145b.longValue(), this.f17146c, this.f17147d, this.f17148e, this.f17149f, this.f17150g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a b(@Nullable ClientInfo clientInfo) {
            this.f17146c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a c(@Nullable List<q> list) {
            this.f17149f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        r.a d(@Nullable Integer num) {
            this.f17147d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        r.a e(@Nullable String str) {
            this.f17148e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a f(@Nullable QosTier qosTier) {
            this.f17150g = qosTier;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a g(long j10) {
            this.f17144a = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a h(long j10) {
            this.f17145b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.r
    @Nullable
    public ClientInfo b() {
        return this.f17139c;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    @Nullable
    public List<q> c() {
        return this.f17142f;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    @Nullable
    public Integer d() {
        return this.f17140d;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    @Nullable
    public String e() {
        return this.f17141e;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List<q> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (this.f17137a == rVar.g() && this.f17138b == rVar.h() && ((clientInfo = this.f17139c) != null ? clientInfo.equals(rVar.b()) : rVar.b() == null) && ((num = this.f17140d) != null ? num.equals(rVar.d()) : rVar.d() == null) && ((str = this.f17141e) != null ? str.equals(rVar.e()) : rVar.e() == null) && ((list = this.f17142f) != null ? list.equals(rVar.c()) : rVar.c() == null)) {
            QosTier qosTier = this.f17143g;
            if (qosTier == null) {
                if (rVar.f() == null) {
                    return true;
                }
            } else if (qosTier.equals(rVar.f())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    @Nullable
    public QosTier f() {
        return this.f17143g;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    public long g() {
        return this.f17137a;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    public long h() {
        return this.f17138b;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        long j10 = this.f17137a;
        long j11 = this.f17138b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003;
        ClientInfo clientInfo = this.f17139c;
        int i11 = 0;
        if (clientInfo == null) {
            hashCode = 0;
        } else {
            hashCode = clientInfo.hashCode();
        }
        int i12 = (i10 ^ hashCode) * 1000003;
        Integer num = this.f17140d;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i13 = (i12 ^ hashCode2) * 1000003;
        String str = this.f17141e;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int i14 = (i13 ^ hashCode3) * 1000003;
        List<q> list = this.f17142f;
        if (list == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = list.hashCode();
        }
        int i15 = (i14 ^ hashCode4) * 1000003;
        QosTier qosTier = this.f17143g;
        if (qosTier != null) {
            i11 = qosTier.hashCode();
        }
        return i15 ^ i11;
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f17137a + ", requestUptimeMs=" + this.f17138b + ", clientInfo=" + this.f17139c + ", logSource=" + this.f17140d + ", logSourceName=" + this.f17141e + ", logEvents=" + this.f17142f + ", qosTier=" + this.f17143g + "}";
    }

    private k(long j10, long j11, @Nullable ClientInfo clientInfo, @Nullable Integer num, @Nullable String str, @Nullable List<q> list, @Nullable QosTier qosTier) {
        this.f17137a = j10;
        this.f17138b = j11;
        this.f17139c = clientInfo;
        this.f17140d = num;
        this.f17141e = str;
        this.f17142f = list;
        this.f17143g = qosTier;
    }
}
