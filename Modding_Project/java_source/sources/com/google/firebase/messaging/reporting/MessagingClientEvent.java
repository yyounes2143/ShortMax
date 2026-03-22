package com.google.firebase.messaging.reporting;

import com.google.firebase.encoders.proto.Protobuf;
/* loaded from: classes5.dex */
public final class MessagingClientEvent {

    /* renamed from: p  reason: collision with root package name */
    private static final MessagingClientEvent f21235p = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f21236a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21237b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21238c;

    /* renamed from: d  reason: collision with root package name */
    private final MessageType f21239d;

    /* renamed from: e  reason: collision with root package name */
    private final SDKPlatform f21240e;

    /* renamed from: f  reason: collision with root package name */
    private final String f21241f;

    /* renamed from: g  reason: collision with root package name */
    private final String f21242g;

    /* renamed from: h  reason: collision with root package name */
    private final int f21243h;

    /* renamed from: i  reason: collision with root package name */
    private final int f21244i;

    /* renamed from: j  reason: collision with root package name */
    private final String f21245j;

    /* renamed from: k  reason: collision with root package name */
    private final long f21246k;

    /* renamed from: l  reason: collision with root package name */
    private final Event f21247l;

    /* renamed from: m  reason: collision with root package name */
    private final String f21248m;

    /* renamed from: n  reason: collision with root package name */
    private final long f21249n;

    /* renamed from: o  reason: collision with root package name */
    private final String f21250o;

    /* loaded from: classes5.dex */
    public enum Event implements s8.a {
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        MESSAGE_OPEN(2);
        
        private final int number_;

        Event(int i10) {
            this.number_ = i10;
        }

        @Override // s8.a
        public int getNumber() {
            return this.number_;
        }
    }

    /* loaded from: classes5.dex */
    public enum MessageType implements s8.a {
        UNKNOWN(0),
        DATA_MESSAGE(1),
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);
        
        private final int number_;

        MessageType(int i10) {
            this.number_ = i10;
        }

        @Override // s8.a
        public int getNumber() {
            return this.number_;
        }
    }

    /* loaded from: classes5.dex */
    public enum SDKPlatform implements s8.a {
        UNKNOWN_OS(0),
        ANDROID(1),
        IOS(2),
        WEB(3);
        
        private final int number_;

        SDKPlatform(int i10) {
            this.number_ = i10;
        }

        @Override // s8.a
        public int getNumber() {
            return this.number_;
        }
    }

    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f21251a = 0;

        /* renamed from: b  reason: collision with root package name */
        private String f21252b = "";

        /* renamed from: c  reason: collision with root package name */
        private String f21253c = "";

        /* renamed from: d  reason: collision with root package name */
        private MessageType f21254d = MessageType.UNKNOWN;

        /* renamed from: e  reason: collision with root package name */
        private SDKPlatform f21255e = SDKPlatform.UNKNOWN_OS;

        /* renamed from: f  reason: collision with root package name */
        private String f21256f = "";

        /* renamed from: g  reason: collision with root package name */
        private String f21257g = "";

        /* renamed from: h  reason: collision with root package name */
        private int f21258h = 0;

        /* renamed from: i  reason: collision with root package name */
        private int f21259i = 0;

        /* renamed from: j  reason: collision with root package name */
        private String f21260j = "";

        /* renamed from: k  reason: collision with root package name */
        private long f21261k = 0;

        /* renamed from: l  reason: collision with root package name */
        private Event f21262l = Event.UNKNOWN_EVENT;

        /* renamed from: m  reason: collision with root package name */
        private String f21263m = "";

        /* renamed from: n  reason: collision with root package name */
        private long f21264n = 0;

        /* renamed from: o  reason: collision with root package name */
        private String f21265o = "";

        a() {
        }

        public MessagingClientEvent a() {
            return new MessagingClientEvent(this.f21251a, this.f21252b, this.f21253c, this.f21254d, this.f21255e, this.f21256f, this.f21257g, this.f21258h, this.f21259i, this.f21260j, this.f21261k, this.f21262l, this.f21263m, this.f21264n, this.f21265o);
        }

        public a b(String str) {
            this.f21263m = str;
            return this;
        }

        public a c(String str) {
            this.f21257g = str;
            return this;
        }

        public a d(String str) {
            this.f21265o = str;
            return this;
        }

        public a e(Event event) {
            this.f21262l = event;
            return this;
        }

        public a f(String str) {
            this.f21253c = str;
            return this;
        }

        public a g(String str) {
            this.f21252b = str;
            return this;
        }

        public a h(MessageType messageType) {
            this.f21254d = messageType;
            return this;
        }

        public a i(String str) {
            this.f21256f = str;
            return this;
        }

        public a j(int i10) {
            this.f21258h = i10;
            return this;
        }

        public a k(long j10) {
            this.f21251a = j10;
            return this;
        }

        public a l(SDKPlatform sDKPlatform) {
            this.f21255e = sDKPlatform;
            return this;
        }

        public a m(String str) {
            this.f21260j = str;
            return this;
        }

        public a n(int i10) {
            this.f21259i = i10;
            return this;
        }
    }

    MessagingClientEvent(long j10, String str, String str2, MessageType messageType, SDKPlatform sDKPlatform, String str3, String str4, int i10, int i11, String str5, long j11, Event event, String str6, long j12, String str7) {
        this.f21236a = j10;
        this.f21237b = str;
        this.f21238c = str2;
        this.f21239d = messageType;
        this.f21240e = sDKPlatform;
        this.f21241f = str3;
        this.f21242g = str4;
        this.f21243h = i10;
        this.f21244i = i11;
        this.f21245j = str5;
        this.f21246k = j11;
        this.f21247l = event;
        this.f21248m = str6;
        this.f21249n = j12;
        this.f21250o = str7;
    }

    public static a p() {
        return new a();
    }

    @Protobuf(tag = 13)
    public String a() {
        return this.f21248m;
    }

    @Protobuf(tag = 11)
    public long b() {
        return this.f21246k;
    }

    @Protobuf(tag = 14)
    public long c() {
        return this.f21249n;
    }

    @Protobuf(tag = 7)
    public String d() {
        return this.f21242g;
    }

    @Protobuf(tag = 15)
    public String e() {
        return this.f21250o;
    }

    @Protobuf(tag = 12)
    public Event f() {
        return this.f21247l;
    }

    @Protobuf(tag = 3)
    public String g() {
        return this.f21238c;
    }

    @Protobuf(tag = 2)
    public String h() {
        return this.f21237b;
    }

    @Protobuf(tag = 4)
    public MessageType i() {
        return this.f21239d;
    }

    @Protobuf(tag = 6)
    public String j() {
        return this.f21241f;
    }

    @Protobuf(tag = 8)
    public int k() {
        return this.f21243h;
    }

    @Protobuf(tag = 1)
    public long l() {
        return this.f21236a;
    }

    @Protobuf(tag = 5)
    public SDKPlatform m() {
        return this.f21240e;
    }

    @Protobuf(tag = 10)
    public String n() {
        return this.f21245j;
    }

    @Protobuf(tag = 9)
    public int o() {
        return this.f21244i;
    }
}
