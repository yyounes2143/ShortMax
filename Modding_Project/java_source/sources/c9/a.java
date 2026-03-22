package c9;

import com.google.firebase.encoders.proto.Protobuf;
import com.google.firebase.messaging.j0;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
/* compiled from: MessagingClientEventExtension.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final a f3341b = new C0088a().a();

    /* renamed from: a  reason: collision with root package name */
    private final MessagingClientEvent f3342a;

    /* compiled from: MessagingClientEventExtension.java */
    /* renamed from: c9.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0088a {

        /* renamed from: a  reason: collision with root package name */
        private MessagingClientEvent f3343a = null;

        C0088a() {
        }

        public a a() {
            return new a(this.f3343a);
        }

        public C0088a b(MessagingClientEvent messagingClientEvent) {
            this.f3343a = messagingClientEvent;
            return this;
        }
    }

    a(MessagingClientEvent messagingClientEvent) {
        this.f3342a = messagingClientEvent;
    }

    public static C0088a b() {
        return new C0088a();
    }

    @Protobuf(tag = 1)
    public MessagingClientEvent a() {
        return this.f3342a;
    }

    public byte[] c() {
        return j0.a(this);
    }
}
