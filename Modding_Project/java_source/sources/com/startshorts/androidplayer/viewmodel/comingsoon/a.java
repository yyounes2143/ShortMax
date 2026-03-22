package com.startshorts.androidplayer.viewmodel.comingsoon;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComingSoonViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: ComingSoonViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.comingsoon.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0655a extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48430a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48431b;

        @Nullable
        public final String a() {
            return this.f48430a;
        }

        public final int b() {
            return this.f48431b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0655a)) {
                return false;
            }
            C0655a c0655a = (C0655a) obj;
            if (Intrinsics.areEqual(this.f48430a, c0655a.f48430a) && this.f48431b == c0655a.f48431b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f48430a;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return (hashCode * 31) + Integer.hashCode(this.f48431b);
        }

        @NotNull
        public String toString() {
            return "CheckShortsReservation(from=" + this.f48430a + ", shortsId=" + this.f48431b + ')';
        }
    }

    /* compiled from: ComingSoonViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f48432a = new b();

        private b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1677812427;
        }

        @NotNull
        public String toString() {
            return "QueryMyListRedPointStatus";
        }
    }

    /* compiled from: ComingSoonViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f48433a = new c();

        private c() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1304133502;
        }

        @NotNull
        public String toString() {
            return "QueryShortcutConfig";
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
