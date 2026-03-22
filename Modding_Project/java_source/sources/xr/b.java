package xr;

import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.f;
/* compiled from: OutgoingContent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOutgoingContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutgoingContent.kt\nio/ktor/http/content/OutgoingContent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n1#2:143\n*E\n"})
/* loaded from: classes8.dex */
public abstract class b {

    /* compiled from: OutgoingContent.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static abstract class a extends b {
        public a() {
            super(null);
        }

        @NotNull
        public abstract byte[] d();
    }

    /* compiled from: OutgoingContent.kt */
    @Metadata
    /* renamed from: xr.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static abstract class AbstractC0972b extends b {
        public AbstractC0972b() {
            super(null);
        }
    }

    /* compiled from: OutgoingContent.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static abstract class c extends b {
        public c() {
            super(null);
        }

        @NotNull
        public abstract ByteReadChannel d();
    }

    /* compiled from: OutgoingContent.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static abstract class d extends b {
        public d() {
            super(null);
        }

        @Nullable
        public abstract Object d(@NotNull e eVar, @NotNull rs.c<? super Unit> cVar);
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Nullable
    public Long a() {
        return null;
    }

    @Nullable
    public io.ktor.http.a b() {
        return null;
    }

    @NotNull
    public f c() {
        return f.f70138b.a();
    }

    private b() {
    }
}
