package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: EpisodeViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.immersion.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0660a extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f48699a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48700b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48701c;

        public C0660a(int i10, int i11, int i12) {
            super(null);
            this.f48699a = i10;
            this.f48700b = i11;
            this.f48701c = i12;
        }

        public final int a() {
            return this.f48700b;
        }

        public final int b() {
            return this.f48701c;
        }

        public final int c() {
            return this.f48699a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0660a)) {
                return false;
            }
            C0660a c0660a = (C0660a) obj;
            if (this.f48699a == c0660a.f48699a && this.f48700b == c0660a.f48700b && this.f48701c == c0660a.f48701c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.f48699a) * 31) + Integer.hashCode(this.f48700b)) * 31) + Integer.hashCode(this.f48701c);
        }

        @NotNull
        public String toString() {
            return "QueryEpisodeList(shortsId=" + this.f48699a + ", pageNumber=" + this.f48700b + ", pageSize=" + this.f48701c + ')';
        }
    }

    /* compiled from: EpisodeViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f48702a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final BaseEpisode f48703b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48704c;

        /* renamed from: d  reason: collision with root package name */
        private final int f48705d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@Nullable Context context, @NotNull BaseEpisode episode, int i10, int i11) {
            super(null);
            Intrinsics.checkNotNullParameter(episode, "episode");
            this.f48702a = context;
            this.f48703b = episode;
            this.f48704c = i10;
            this.f48705d = i11;
        }

        @Nullable
        public final Context a() {
            return this.f48702a;
        }

        @NotNull
        public final BaseEpisode b() {
            return this.f48703b;
        }

        public final int c() {
            return this.f48704c;
        }

        public final int d() {
            return this.f48705d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f48702a, bVar.f48702a) && Intrinsics.areEqual(this.f48703b, bVar.f48703b) && this.f48704c == bVar.f48704c && this.f48705d == bVar.f48705d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48702a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (((((hashCode * 31) + this.f48703b.hashCode()) * 31) + Integer.hashCode(this.f48704c)) * 31) + Integer.hashCode(this.f48705d);
        }

        @NotNull
        public String toString() {
            return "QueryPrevEpisodeUnlockedStatus(context=" + this.f48702a + ", episode=" + this.f48703b + ", pageNumber=" + this.f48704c + ", pageSize=" + this.f48705d + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
