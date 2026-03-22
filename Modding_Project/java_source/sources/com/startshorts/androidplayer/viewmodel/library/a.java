package com.startshorts.androidplayer.viewmodel.library;

import android.util.LongSparseArray;
import com.startshorts.androidplayer.bean.library.LibraryCategory;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: LibraryViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.library.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0666a extends a {

        /* renamed from: a  reason: collision with root package name */
        private int f48809a;

        public C0666a() {
            this(0, 1, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0666a) && this.f48809a == ((C0666a) obj).f48809a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48809a);
        }

        @NotNull
        public String toString() {
            return "Init(i=" + this.f48809a + ')';
        }

        public C0666a(int i10) {
            super(null);
            this.f48809a = i10;
        }

        public /* synthetic */ C0666a(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 0 : i10);
        }
    }

    /* compiled from: LibraryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f48810a;

        /* renamed from: b  reason: collision with root package name */
        private final long f48811b;

        /* renamed from: c  reason: collision with root package name */
        private final long f48812c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final LongSparseArray<LibraryCategory> f48813d;

        /* renamed from: e  reason: collision with root package name */
        private final int f48814e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f48815f;

        public /* synthetic */ b(int i10, long j10, long j11, LongSparseArray longSparseArray, int i11, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this(i10, j10, j11, longSparseArray, i11, (i12 & 32) != 0 ? false : z10);
        }

        @NotNull
        public final LongSparseArray<LibraryCategory> a() {
            return this.f48813d;
        }

        public final long b() {
            return this.f48812c;
        }

        public final int c() {
            return this.f48814e;
        }

        public final long d() {
            return this.f48811b;
        }

        public final int e() {
            return this.f48810a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f48810a == bVar.f48810a && this.f48811b == bVar.f48811b && this.f48812c == bVar.f48812c && Intrinsics.areEqual(this.f48813d, bVar.f48813d) && this.f48814e == bVar.f48814e && this.f48815f == bVar.f48815f) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((((((Integer.hashCode(this.f48810a) * 31) + Long.hashCode(this.f48811b)) * 31) + Long.hashCode(this.f48812c)) * 31) + this.f48813d.hashCode()) * 31) + Integer.hashCode(this.f48814e)) * 31) + Boolean.hashCode(this.f48815f);
        }

        @NotNull
        public String toString() {
            return "NextPage(refreshWay=" + this.f48810a + ", paidType=" + this.f48811b + ", contentType=" + this.f48812c + ", classIdMap=" + this.f48813d + ", pageNum=" + this.f48814e + ", firstLoad=" + this.f48815f + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i10, long j10, long j11, @NotNull LongSparseArray<LibraryCategory> classIdMap, int i11, boolean z10) {
            super(null);
            Intrinsics.checkNotNullParameter(classIdMap, "classIdMap");
            this.f48810a = i10;
            this.f48811b = j10;
            this.f48812c = j11;
            this.f48813d = classIdMap;
            this.f48814e = i11;
            this.f48815f = z10;
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
