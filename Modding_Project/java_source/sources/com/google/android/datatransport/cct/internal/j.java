package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.q;
import java.util.Arrays;
/* compiled from: AutoValue_LogEvent.java */
/* loaded from: classes4.dex */
final class j extends q {

    /* renamed from: a  reason: collision with root package name */
    private final long f17119a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f17120b;

    /* renamed from: c  reason: collision with root package name */
    private final ComplianceData f17121c;

    /* renamed from: d  reason: collision with root package name */
    private final long f17122d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f17123e;

    /* renamed from: f  reason: collision with root package name */
    private final String f17124f;

    /* renamed from: g  reason: collision with root package name */
    private final long f17125g;

    /* renamed from: h  reason: collision with root package name */
    private final NetworkConnectionInfo f17126h;

    /* renamed from: i  reason: collision with root package name */
    private final n f17127i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_LogEvent.java */
    /* loaded from: classes4.dex */
    public static final class b extends q.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f17128a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f17129b;

        /* renamed from: c  reason: collision with root package name */
        private ComplianceData f17130c;

        /* renamed from: d  reason: collision with root package name */
        private Long f17131d;

        /* renamed from: e  reason: collision with root package name */
        private byte[] f17132e;

        /* renamed from: f  reason: collision with root package name */
        private String f17133f;

        /* renamed from: g  reason: collision with root package name */
        private Long f17134g;

        /* renamed from: h  reason: collision with root package name */
        private NetworkConnectionInfo f17135h;

        /* renamed from: i  reason: collision with root package name */
        private n f17136i;

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q a() {
            String str = "";
            if (this.f17128a == null) {
                str = " eventTimeMs";
            }
            if (this.f17131d == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f17134g == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new j(this.f17128a.longValue(), this.f17129b, this.f17130c, this.f17131d.longValue(), this.f17132e, this.f17133f, this.f17134g.longValue(), this.f17135h, this.f17136i);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a b(@Nullable ComplianceData complianceData) {
            this.f17130c = complianceData;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a c(@Nullable Integer num) {
            this.f17129b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a d(long j10) {
            this.f17128a = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a e(long j10) {
            this.f17131d = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a f(@Nullable n nVar) {
            this.f17136i = nVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a g(@Nullable NetworkConnectionInfo networkConnectionInfo) {
            this.f17135h = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        q.a h(@Nullable byte[] bArr) {
            this.f17132e = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        q.a i(@Nullable String str) {
            this.f17133f = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a j(long j10) {
            this.f17134g = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.q
    @Nullable
    public ComplianceData b() {
        return this.f17121c;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    @Nullable
    public Integer c() {
        return this.f17120b;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public long d() {
        return this.f17119a;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public long e() {
        return this.f17122d;
    }

    public boolean equals(Object obj) {
        Integer num;
        ComplianceData complianceData;
        byte[] h10;
        String str;
        NetworkConnectionInfo networkConnectionInfo;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f17119a == qVar.d() && ((num = this.f17120b) != null ? num.equals(qVar.c()) : qVar.c() == null) && ((complianceData = this.f17121c) != null ? complianceData.equals(qVar.b()) : qVar.b() == null) && this.f17122d == qVar.e()) {
            byte[] bArr = this.f17123e;
            if (qVar instanceof j) {
                h10 = ((j) qVar).f17123e;
            } else {
                h10 = qVar.h();
            }
            if (Arrays.equals(bArr, h10) && ((str = this.f17124f) != null ? str.equals(qVar.i()) : qVar.i() == null) && this.f17125g == qVar.j() && ((networkConnectionInfo = this.f17126h) != null ? networkConnectionInfo.equals(qVar.g()) : qVar.g() == null)) {
                n nVar = this.f17127i;
                if (nVar == null) {
                    if (qVar.f() == null) {
                        return true;
                    }
                } else if (nVar.equals(qVar.f())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    @Nullable
    public n f() {
        return this.f17127i;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    @Nullable
    public NetworkConnectionInfo g() {
        return this.f17126h;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    @Nullable
    public byte[] h() {
        return this.f17123e;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        long j10 = this.f17119a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f17120b;
        int i11 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i12 = (i10 ^ hashCode) * 1000003;
        ComplianceData complianceData = this.f17121c;
        if (complianceData == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = complianceData.hashCode();
        }
        long j11 = this.f17122d;
        int hashCode5 = (((((i12 ^ hashCode2) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f17123e)) * 1000003;
        String str = this.f17124f;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        long j12 = this.f17125g;
        int i13 = (((hashCode5 ^ hashCode3) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.f17126h;
        if (networkConnectionInfo == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = networkConnectionInfo.hashCode();
        }
        int i14 = (i13 ^ hashCode4) * 1000003;
        n nVar = this.f17127i;
        if (nVar != null) {
            i11 = nVar.hashCode();
        }
        return i14 ^ i11;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    @Nullable
    public String i() {
        return this.f17124f;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public long j() {
        return this.f17125g;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f17119a + ", eventCode=" + this.f17120b + ", complianceData=" + this.f17121c + ", eventUptimeMs=" + this.f17122d + ", sourceExtension=" + Arrays.toString(this.f17123e) + ", sourceExtensionJsonProto3=" + this.f17124f + ", timezoneOffsetSeconds=" + this.f17125g + ", networkConnectionInfo=" + this.f17126h + ", experimentIds=" + this.f17127i + "}";
    }

    private j(long j10, @Nullable Integer num, @Nullable ComplianceData complianceData, long j11, @Nullable byte[] bArr, @Nullable String str, long j12, @Nullable NetworkConnectionInfo networkConnectionInfo, @Nullable n nVar) {
        this.f17119a = j10;
        this.f17120b = num;
        this.f17121c = complianceData;
        this.f17122d = j11;
        this.f17123e = bArr;
        this.f17124f = str;
        this.f17125g = j12;
        this.f17126h = networkConnectionInfo;
        this.f17127i = nVar;
    }
}
