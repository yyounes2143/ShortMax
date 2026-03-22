package com.amazonaws.services.s3;
/* loaded from: classes2.dex */
public class S3ClientOptions {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5899a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f5900b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f5901c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5902d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f5903e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f5904f;

    /* loaded from: classes2.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private boolean f5905a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f5906b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f5907c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f5908d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f5909e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f5910f;

        public S3ClientOptions a() {
            return new S3ClientOptions(this.f5905a, this.f5906b, this.f5907c, this.f5908d, this.f5909e, this.f5910f);
        }

        public Builder b(boolean z10) {
            this.f5906b = z10;
            return this;
        }

        public Builder c(boolean z10) {
            this.f5905a = z10;
            return this;
        }

        private Builder() {
            this.f5905a = false;
            this.f5906b = false;
            this.f5907c = false;
            this.f5908d = false;
            this.f5909e = false;
            this.f5910f = false;
        }
    }

    public static Builder a() {
        return new Builder();
    }

    public boolean b() {
        return this.f5902d;
    }

    public boolean c() {
        return this.f5899a;
    }

    public boolean d() {
        return this.f5904f;
    }

    public boolean e() {
        return this.f5900b;
    }

    @Deprecated
    public S3ClientOptions() {
        this.f5899a = false;
        this.f5900b = false;
        this.f5901c = false;
        this.f5902d = false;
        this.f5903e = false;
        this.f5904f = false;
    }

    @Deprecated
    public S3ClientOptions(S3ClientOptions s3ClientOptions) {
        this.f5899a = s3ClientOptions.f5899a;
        this.f5900b = s3ClientOptions.f5900b;
        this.f5901c = s3ClientOptions.f5901c;
        this.f5902d = s3ClientOptions.f5902d;
        this.f5903e = s3ClientOptions.f5903e;
        this.f5904f = s3ClientOptions.f5904f;
    }

    private S3ClientOptions(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        this.f5899a = z10;
        this.f5900b = z11;
        this.f5901c = z12;
        this.f5902d = z13;
        this.f5903e = z14;
        this.f5904f = z15;
    }
}
