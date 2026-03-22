package com.startshorts.androidplayer.viewmodel.shorts;

import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: ShortsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<ShortsEpisode> f49406a;

        public a(@Nullable List<ShortsEpisode> list) {
            super(null);
            this.f49406a = list;
        }

        @Nullable
        public final List<ShortsEpisode> a() {
            return this.f49406a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f49406a, ((a) obj).f49406a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<ShortsEpisode> list = this.f49406a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryEpisodesSuccess(episodes=" + this.f49406a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
