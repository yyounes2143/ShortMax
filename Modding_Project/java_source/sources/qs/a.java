package qs;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Thread.kt */
@Metadata
@SourceDebugExtension({"SMAP\nThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Thread.kt\nkotlin/concurrent/ThreadsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"})
/* loaded from: classes8.dex */
public final class a {

    /* compiled from: Thread.kt */
    @Metadata
    /* renamed from: qs.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0909a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f65408a;

        C0909a(Function0<Unit> function0) {
            this.f65408a = function0;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f65408a.invoke();
        }
    }

    @NotNull
    public static final Thread a(boolean z10, boolean z11, @Nullable ClassLoader classLoader, @Nullable String str, int i10, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        C0909a c0909a = new C0909a(block);
        if (z11) {
            c0909a.setDaemon(true);
        }
        if (i10 > 0) {
            c0909a.setPriority(i10);
        }
        if (str != null) {
            c0909a.setName(str);
        }
        if (classLoader != null) {
            c0909a.setContextClassLoader(classLoader);
        }
        if (z10) {
            c0909a.start();
        }
        return c0909a;
    }

    public static /* synthetic */ Thread b(boolean z10, boolean z11, ClassLoader classLoader, String str, int i10, Function0 function0, int i11, Object obj) {
        ClassLoader classLoader2;
        String str2;
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        boolean z12 = z10;
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        boolean z13 = z11;
        if ((i11 & 4) != 0) {
            classLoader2 = null;
        } else {
            classLoader2 = classLoader;
        }
        if ((i11 & 8) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        if ((i11 & 16) != 0) {
            i10 = -1;
        }
        return a(z12, z13, classLoader2, str2, i10, function0);
    }
}
