package com.explorestack.protobuf;
/* compiled from: LazyFieldLite.java */
/* loaded from: classes3.dex */
public class l0 {

    /* renamed from: e  reason: collision with root package name */
    private static final y f14450e = y.b();

    /* renamed from: a  reason: collision with root package name */
    private ByteString f14451a;

    /* renamed from: b  reason: collision with root package name */
    private y f14452b;

    /* renamed from: c  reason: collision with root package name */
    protected volatile MessageLite f14453c;

    /* renamed from: d  reason: collision with root package name */
    private volatile ByteString f14454d;

    public l0(y yVar, ByteString byteString) {
        a(yVar, byteString);
        this.f14452b = yVar;
        this.f14451a = byteString;
    }

    private static void a(y yVar, ByteString byteString) {
        if (yVar != null) {
            if (byteString != null) {
                return;
            }
            throw new NullPointerException("found null ByteString");
        }
        throw new NullPointerException("found null ExtensionRegistry");
    }

    protected void b(MessageLite messageLite) {
        if (this.f14453c != null) {
            return;
        }
        synchronized (this) {
            if (this.f14453c != null) {
                return;
            }
            try {
                if (this.f14451a != null) {
                    this.f14453c = messageLite.getParserForType().parseFrom(this.f14451a, this.f14452b);
                    this.f14454d = this.f14451a;
                } else {
                    this.f14453c = messageLite;
                    this.f14454d = ByteString.EMPTY;
                }
            } catch (InvalidProtocolBufferException unused) {
                this.f14453c = messageLite;
                this.f14454d = ByteString.EMPTY;
            }
        }
    }

    public int c() {
        if (this.f14454d != null) {
            return this.f14454d.size();
        }
        ByteString byteString = this.f14451a;
        if (byteString != null) {
            return byteString.size();
        }
        if (this.f14453c != null) {
            return this.f14453c.getSerializedSize();
        }
        return 0;
    }

    public MessageLite d(MessageLite messageLite) {
        b(messageLite);
        return this.f14453c;
    }

    public MessageLite e(MessageLite messageLite) {
        MessageLite messageLite2 = this.f14453c;
        this.f14451a = null;
        this.f14454d = null;
        this.f14453c = messageLite;
        return messageLite2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        MessageLite messageLite = this.f14453c;
        MessageLite messageLite2 = l0Var.f14453c;
        if (messageLite == null && messageLite2 == null) {
            return f().equals(l0Var.f());
        }
        if (messageLite != null && messageLite2 != null) {
            return messageLite.equals(messageLite2);
        }
        if (messageLite != null) {
            return messageLite.equals(l0Var.d(messageLite.mo4630getDefaultInstanceForType()));
        }
        return d(messageLite2.mo4630getDefaultInstanceForType()).equals(messageLite2);
    }

    public ByteString f() {
        if (this.f14454d != null) {
            return this.f14454d;
        }
        ByteString byteString = this.f14451a;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            try {
                if (this.f14454d != null) {
                    return this.f14454d;
                }
                if (this.f14453c == null) {
                    this.f14454d = ByteString.EMPTY;
                } else {
                    this.f14454d = this.f14453c.toByteString();
                }
                return this.f14454d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int hashCode() {
        return 1;
    }

    public l0() {
    }
}
