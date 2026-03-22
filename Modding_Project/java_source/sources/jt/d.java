package jt;

import kotlin.Metadata;
import mt.b0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Channel.kt */
@Metadata
/* loaded from: classes8.dex */
public interface d<E> extends kotlinx.coroutines.channels.h<E>, i<E> {
    @NotNull
    public static final a E8 = a.f60552a;

    /* compiled from: Channel.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f60552a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final int f60553b = b0.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        private a() {
        }

        public final int a() {
            return f60553b;
        }
    }
}
