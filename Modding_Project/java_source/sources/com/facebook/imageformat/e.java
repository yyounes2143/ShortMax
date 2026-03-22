package com.facebook.imageformat;

import com.facebook.imageformat.c;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import k2.m;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageFormatChecker.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImageFormatChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageFormatChecker.kt\ncom/facebook/imageformat/ImageFormatChecker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n1863#2,2:170\n*S KotlinDebug\n*F\n+ 1 ImageFormatChecker.kt\ncom/facebook/imageformat/ImageFormatChecker\n*L\n59#1:170,2\n*E\n"})
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f15623e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final i<e> f15624f = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.facebook.imageformat.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            e f10;
            f10 = e.f();
            return f10;
        }
    });

    /* renamed from: a  reason: collision with root package name */
    private int f15625a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private List<? extends c.b> f15626b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imageformat.a f15627c = new com.facebook.imageformat.a();

    /* renamed from: d  reason: collision with root package name */
    private boolean f15628d;

    /* compiled from: ImageFormatChecker.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int e(int i10, InputStream inputStream, byte[] bArr) throws IOException {
            if (bArr.length >= i10) {
                if (inputStream.markSupported()) {
                    try {
                        inputStream.mark(i10);
                        return k2.a.b(inputStream, bArr, 0, i10);
                    } finally {
                        inputStream.reset();
                    }
                }
                return k2.a.b(inputStream, bArr, 0, i10);
            }
            throw new IllegalStateException("Check failed.");
        }

        @NotNull
        public final c b(@NotNull InputStream is2) throws IOException {
            Intrinsics.checkNotNullParameter(is2, "is");
            return d().c(is2);
        }

        @NotNull
        public final c c(@NotNull InputStream is2) {
            Intrinsics.checkNotNullParameter(is2, "is");
            try {
                return b(is2);
            } catch (IOException e10) {
                throw m.a(e10);
            }
        }

        @NotNull
        public final e d() {
            return (e) e.f15624f.getValue();
        }

        private a() {
        }
    }

    private e() {
        h();
    }

    @NotNull
    public static final c d(@NotNull InputStream inputStream) {
        return f15623e.c(inputStream);
    }

    @NotNull
    public static final e e() {
        return f15623e.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e f() {
        return new e();
    }

    private final void h() {
        this.f15625a = this.f15627c.b();
        List<? extends c.b> list = this.f15626b;
        if (list != null) {
            Intrinsics.checkNotNull(list);
            for (c.b bVar : list) {
                this.f15625a = Math.max(this.f15625a, bVar.b());
            }
        }
    }

    @NotNull
    public final c c(@NotNull InputStream is2) throws IOException {
        Intrinsics.checkNotNullParameter(is2, "is");
        int i10 = this.f15625a;
        byte[] bArr = new byte[i10];
        int e10 = f15623e.e(i10, is2, bArr);
        c a10 = this.f15627c.a(bArr, e10);
        if (Intrinsics.areEqual(a10, b.f15616n) && !this.f15628d) {
            a10 = c.f15620d;
        }
        if (a10 != c.f15620d) {
            return a10;
        }
        List<? extends c.b> list = this.f15626b;
        if (list != null) {
            for (c.b bVar : list) {
                c a11 = bVar.a(bArr, e10);
                if (a11 != c.f15620d) {
                    return a11;
                }
            }
        }
        return c.f15620d;
    }

    @NotNull
    public final e g(boolean z10) {
        this.f15628d = z10;
        return this;
    }
}
