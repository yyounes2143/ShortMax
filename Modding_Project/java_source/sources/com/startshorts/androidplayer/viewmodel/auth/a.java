package com.startshorts.androidplayer.viewmodel.auth;

import android.app.Activity;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BindViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.auth.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0649a extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f48262a;

        public C0649a(int i10) {
            super(null);
            this.f48262a = i10;
        }

        public final int a() {
            return this.f48262a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0649a) && this.f48262a == ((C0649a) obj).f48262a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48262a);
        }

        @NotNull
        public String toString() {
            return "Bind(provider=" + this.f48262a + ')';
        }
    }

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Activity f48263a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48264b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48265c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final Intent f48266d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull Activity activity, int i10, int i11, @Nullable Intent intent) {
            super(null);
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.f48263a = activity;
            this.f48264b = i10;
            this.f48265c = i11;
            this.f48266d = intent;
        }

        @NotNull
        public final Activity a() {
            return this.f48263a;
        }

        @Nullable
        public final Intent b() {
            return this.f48266d;
        }

        public final int c() {
            return this.f48264b;
        }

        public final int d() {
            return this.f48265c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f48263a, bVar.f48263a) && this.f48264b == bVar.f48264b && this.f48265c == bVar.f48265c && Intrinsics.areEqual(this.f48266d, bVar.f48266d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = ((((this.f48263a.hashCode() * 31) + Integer.hashCode(this.f48264b)) * 31) + Integer.hashCode(this.f48265c)) * 31;
            Intent intent = this.f48266d;
            if (intent == null) {
                hashCode = 0;
            } else {
                hashCode = intent.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "HandleActivityResult(activity=" + this.f48263a + ", requestCode=" + this.f48264b + ", resultCode=" + this.f48265c + ", data=" + this.f48266d + ')';
        }
    }

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Activity f48267a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull Activity activity) {
            super(null);
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.f48267a = activity;
        }

        @NotNull
        public final Activity a() {
            return this.f48267a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48267a, ((c) obj).f48267a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48267a.hashCode();
        }

        @NotNull
        public String toString() {
            return "InitAuthManager(activity=" + this.f48267a + ')';
        }
    }

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f48268a = new d();

        private d() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1648778472;
        }

        @NotNull
        public String toString() {
            return "QueryBindInfoList";
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
