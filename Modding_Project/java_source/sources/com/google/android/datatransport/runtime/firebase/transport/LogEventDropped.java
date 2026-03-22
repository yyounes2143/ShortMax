package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.Protobuf;
/* loaded from: classes4.dex */
public final class LogEventDropped {

    /* renamed from: c  reason: collision with root package name */
    private static final LogEventDropped f17157c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f17158a;

    /* renamed from: b  reason: collision with root package name */
    private final Reason f17159b;

    /* loaded from: classes4.dex */
    public enum Reason implements s8.a {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);
        
        private final int number_;

        Reason(int i10) {
            this.number_ = i10;
        }

        @Override // s8.a
        public int getNumber() {
            return this.number_;
        }
    }

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f17160a = 0;

        /* renamed from: b  reason: collision with root package name */
        private Reason f17161b = Reason.REASON_UNKNOWN;

        a() {
        }

        public LogEventDropped a() {
            return new LogEventDropped(this.f17160a, this.f17161b);
        }

        public a b(long j10) {
            this.f17160a = j10;
            return this;
        }

        public a c(Reason reason) {
            this.f17161b = reason;
            return this;
        }
    }

    LogEventDropped(long j10, Reason reason) {
        this.f17158a = j10;
        this.f17159b = reason;
    }

    public static a c() {
        return new a();
    }

    @Protobuf(tag = 1)
    public long a() {
        return this.f17158a;
    }

    @Protobuf(tag = 3)
    public Reason b() {
        return this.f17159b;
    }
}
