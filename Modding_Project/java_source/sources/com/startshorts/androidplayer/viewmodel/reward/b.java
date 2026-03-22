package com.startshorts.androidplayer.viewmodel.reward;

import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final NewbieWatchTask f49158a;

        public a(@Nullable NewbieWatchTask newbieWatchTask) {
            super(null);
            this.f49158a = newbieWatchTask;
        }

        @Nullable
        public final NewbieWatchTask a() {
            return this.f49158a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f49158a, ((a) obj).f49158a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            NewbieWatchTask newbieWatchTask = this.f49158a;
            if (newbieWatchTask == null) {
                return 0;
            }
            return newbieWatchTask.hashCode();
        }

        @NotNull
        public String toString() {
            return "Result(task=" + this.f49158a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
