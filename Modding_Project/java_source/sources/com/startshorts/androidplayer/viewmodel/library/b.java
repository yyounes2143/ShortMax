package com.startshorts.androidplayer.viewmodel.library;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.library.LoadLibrary;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: LibraryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private LoadLibrary f48816a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull LoadLibrary result) {
            super(null);
            Intrinsics.checkNotNullParameter(result, "result");
            this.f48816a = result;
        }

        @NotNull
        public final LoadLibrary a() {
            return this.f48816a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48816a, ((a) obj).f48816a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48816a.hashCode();
        }

        @NotNull
        public String toString() {
            return "FirstLoadSuccess(result=" + this.f48816a + ')';
        }
    }

    /* compiled from: LibraryViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.library.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0667b extends b {

        /* renamed from: a  reason: collision with root package name */
        private final int f48817a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48818b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final ApiErrorState f48819c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0667b(int i10, @NotNull String key, @NotNull ApiErrorState errorState) {
            super(null);
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(errorState, "errorState");
            this.f48817a = i10;
            this.f48818b = key;
            this.f48819c = errorState;
        }

        @NotNull
        public final ApiErrorState a() {
            return this.f48819c;
        }

        @NotNull
        public final String b() {
            return this.f48818b;
        }

        public final int c() {
            return this.f48817a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0667b)) {
                return false;
            }
            C0667b c0667b = (C0667b) obj;
            if (this.f48817a == c0667b.f48817a && Intrinsics.areEqual(this.f48818b, c0667b.f48818b) && Intrinsics.areEqual(this.f48819c, c0667b.f48819c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.f48817a) * 31) + this.f48818b.hashCode()) * 31) + this.f48819c.hashCode();
        }

        @NotNull
        public String toString() {
            return "NextPageFailure(refreshWay=" + this.f48817a + ", key=" + this.f48818b + ", errorState=" + this.f48819c + ')';
        }
    }

    /* compiled from: LibraryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final int f48820a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48821b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private List<BaseShorts> f48822c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f48823d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i10, @NotNull String key, @Nullable List<BaseShorts> list, boolean z10) {
            super(null);
            Intrinsics.checkNotNullParameter(key, "key");
            this.f48820a = i10;
            this.f48821b = key;
            this.f48822c = list;
            this.f48823d = z10;
        }

        @NotNull
        public final String a() {
            return this.f48821b;
        }

        @Nullable
        public final List<BaseShorts> b() {
            return this.f48822c;
        }

        public final int c() {
            return this.f48820a;
        }

        public final boolean d() {
            return this.f48823d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f48820a == cVar.f48820a && Intrinsics.areEqual(this.f48821b, cVar.f48821b) && Intrinsics.areEqual(this.f48822c, cVar.f48822c) && this.f48823d == cVar.f48823d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = ((Integer.hashCode(this.f48820a) * 31) + this.f48821b.hashCode()) * 31;
            List<BaseShorts> list = this.f48822c;
            if (list == null) {
                hashCode = 0;
            } else {
                hashCode = list.hashCode();
            }
            return ((hashCode2 + hashCode) * 31) + Boolean.hashCode(this.f48823d);
        }

        @NotNull
        public String toString() {
            return "NextPageSuccess(refreshWay=" + this.f48820a + ", key=" + this.f48821b + ", list=" + this.f48822c + ", isComplete=" + this.f48823d + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
