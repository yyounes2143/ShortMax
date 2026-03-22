package com.startshorts.androidplayer.viewmodel.comingsoon;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComingSoonViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: ComingSoonViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private final int f48434a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f48435b;

        public a(int i10, boolean z10) {
            super(null);
            this.f48434a = i10;
            this.f48435b = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f48434a == aVar.f48434a && this.f48435b == aVar.f48435b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f48434a) * 31) + Boolean.hashCode(this.f48435b);
        }

        @NotNull
        public String toString() {
            return "CheckShortsReservationResult(shortsId=" + this.f48434a + ", reservation=" + this.f48435b + ')';
        }
    }

    /* compiled from: ComingSoonViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.comingsoon.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0656b extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f48436a;

        public C0656b(@Nullable List<String> list) {
            super(null);
            this.f48436a = list;
        }

        @Nullable
        public final List<String> a() {
            return this.f48436a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0656b) && Intrinsics.areEqual(this.f48436a, ((C0656b) obj).f48436a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<String> list = this.f48436a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShortcutConfigResult(list=" + this.f48436a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
