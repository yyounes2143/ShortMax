package androidx.work;

import android.net.Uri;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.room.ColumnInfo;
import androidx.work.impl.utils.DurationApi26Impl;
import java.time.Duration;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Constraints.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Constraints {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Constraints NONE = new Constraints(null, false, false, false, false, 0, 0, null, 255, null);
    @ColumnInfo(name = "trigger_max_content_delay")
    private final long contentTriggerMaxDelayMillis;
    @ColumnInfo(name = "trigger_content_update_delay")
    private final long contentTriggerUpdateDelayMillis;
    @ColumnInfo(name = "content_uri_triggers")
    @NotNull
    private final Set<ContentUriTrigger> contentUriTriggers;
    @ColumnInfo(name = "required_network_type")
    @NotNull
    private final NetworkType requiredNetworkType;
    @ColumnInfo(name = "requires_battery_not_low")
    private final boolean requiresBatteryNotLow;
    @ColumnInfo(name = "requires_charging")
    private final boolean requiresCharging;
    @ColumnInfo(name = "requires_device_idle")
    private final boolean requiresDeviceIdle;
    @ColumnInfo(name = "requires_storage_not_low")
    private final boolean requiresStorageNotLow;

    /* compiled from: Constraints.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Builder {
        @NotNull
        private Set<ContentUriTrigger> contentUriTriggers;
        @NotNull
        private NetworkType requiredNetworkType;
        private boolean requiresBatteryNotLow;
        private boolean requiresCharging;
        private boolean requiresDeviceIdle;
        private boolean requiresStorageNotLow;
        private long triggerContentMaxDelay;
        private long triggerContentUpdateDelay;

        public Builder() {
            this.requiredNetworkType = NetworkType.NOT_REQUIRED;
            this.triggerContentUpdateDelay = -1L;
            this.triggerContentMaxDelay = -1L;
            this.contentUriTriggers = new LinkedHashSet();
        }

        @RequiresApi(24)
        @NotNull
        public final Builder addContentUriTrigger(@NotNull Uri uri, boolean z10) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.contentUriTriggers.add(new ContentUriTrigger(uri, z10));
            return this;
        }

        @NotNull
        public final Constraints build() {
            Set i12 = CollectionsKt.i1(this.contentUriTriggers);
            long j10 = this.triggerContentUpdateDelay;
            long j11 = this.triggerContentMaxDelay;
            return new Constraints(this.requiredNetworkType, this.requiresCharging, this.requiresDeviceIdle, this.requiresBatteryNotLow, this.requiresStorageNotLow, j10, j11, i12);
        }

        @NotNull
        public final Builder setRequiredNetworkType(@NotNull NetworkType networkType) {
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            this.requiredNetworkType = networkType;
            return this;
        }

        @NotNull
        public final Builder setRequiresBatteryNotLow(boolean z10) {
            this.requiresBatteryNotLow = z10;
            return this;
        }

        @NotNull
        public final Builder setRequiresCharging(boolean z10) {
            this.requiresCharging = z10;
            return this;
        }

        @RequiresApi(23)
        @NotNull
        public final Builder setRequiresDeviceIdle(boolean z10) {
            this.requiresDeviceIdle = z10;
            return this;
        }

        @NotNull
        public final Builder setRequiresStorageNotLow(boolean z10) {
            this.requiresStorageNotLow = z10;
            return this;
        }

        @RequiresApi(24)
        @NotNull
        public final Builder setTriggerContentMaxDelay(long j10, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            this.triggerContentMaxDelay = timeUnit.toMillis(j10);
            return this;
        }

        @RequiresApi(24)
        @NotNull
        public final Builder setTriggerContentUpdateDelay(long j10, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            this.triggerContentUpdateDelay = timeUnit.toMillis(j10);
            return this;
        }

        @RequiresApi(26)
        @NotNull
        public final Builder setTriggerContentMaxDelay(@NotNull Duration duration) {
            Intrinsics.checkNotNullParameter(duration, "duration");
            this.triggerContentMaxDelay = DurationApi26Impl.toMillisCompat(duration);
            return this;
        }

        @RequiresApi(26)
        @NotNull
        public final Builder setTriggerContentUpdateDelay(@NotNull Duration duration) {
            Intrinsics.checkNotNullParameter(duration, "duration");
            this.triggerContentUpdateDelay = DurationApi26Impl.toMillisCompat(duration);
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder(@NotNull Constraints constraints) {
            Intrinsics.checkNotNullParameter(constraints, "constraints");
            this.requiredNetworkType = NetworkType.NOT_REQUIRED;
            this.triggerContentUpdateDelay = -1L;
            this.triggerContentMaxDelay = -1L;
            this.contentUriTriggers = new LinkedHashSet();
            this.requiresCharging = constraints.requiresCharging();
            this.requiresDeviceIdle = constraints.requiresDeviceIdle();
            this.requiredNetworkType = constraints.getRequiredNetworkType();
            this.requiresBatteryNotLow = constraints.requiresBatteryNotLow();
            this.requiresStorageNotLow = constraints.requiresStorageNotLow();
            this.triggerContentUpdateDelay = constraints.getContentTriggerUpdateDelayMillis();
            this.triggerContentMaxDelay = constraints.getContentTriggerMaxDelayMillis();
            this.contentUriTriggers = CollectionsKt.h1(constraints.getContentUriTriggers());
        }
    }

    /* compiled from: Constraints.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Constraints.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class ContentUriTrigger {
        private final boolean isTriggeredForDescendants;
        @NotNull
        private final Uri uri;

        public ContentUriTrigger(@NotNull Uri uri, boolean z10) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.uri = uri;
            this.isTriggeredForDescendants = z10;
        }

        public boolean equals(@Nullable Object obj) {
            Class<?> cls;
            if (this == obj) {
                return true;
            }
            if (obj != null) {
                cls = obj.getClass();
            } else {
                cls = null;
            }
            if (!Intrinsics.areEqual(ContentUriTrigger.class, cls)) {
                return false;
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
            ContentUriTrigger contentUriTrigger = (ContentUriTrigger) obj;
            if (Intrinsics.areEqual(this.uri, contentUriTrigger.uri) && this.isTriggeredForDescendants == contentUriTrigger.isTriggeredForDescendants) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Uri getUri() {
            return this.uri;
        }

        public int hashCode() {
            return (this.uri.hashCode() * 31) + Boolean.hashCode(this.isTriggeredForDescendants);
        }

        public final boolean isTriggeredForDescendants() {
            return this.isTriggeredForDescendants;
        }
    }

    public Constraints() {
        this(null, false, false, false, false, 0L, 0L, null, 255, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Constraints.class, obj.getClass())) {
            return false;
        }
        Constraints constraints = (Constraints) obj;
        if (this.requiresCharging != constraints.requiresCharging || this.requiresDeviceIdle != constraints.requiresDeviceIdle || this.requiresBatteryNotLow != constraints.requiresBatteryNotLow || this.requiresStorageNotLow != constraints.requiresStorageNotLow || this.contentTriggerUpdateDelayMillis != constraints.contentTriggerUpdateDelayMillis || this.contentTriggerMaxDelayMillis != constraints.contentTriggerMaxDelayMillis || this.requiredNetworkType != constraints.requiredNetworkType) {
            return false;
        }
        return Intrinsics.areEqual(this.contentUriTriggers, constraints.contentUriTriggers);
    }

    public final long getContentTriggerMaxDelayMillis() {
        return this.contentTriggerMaxDelayMillis;
    }

    public final long getContentTriggerUpdateDelayMillis() {
        return this.contentTriggerUpdateDelayMillis;
    }

    @NotNull
    public final Set<ContentUriTrigger> getContentUriTriggers() {
        return this.contentUriTriggers;
    }

    @NotNull
    public final NetworkType getRequiredNetworkType() {
        return this.requiredNetworkType;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final boolean hasContentUriTriggers() {
        return !this.contentUriTriggers.isEmpty();
    }

    public int hashCode() {
        long j10 = this.contentTriggerUpdateDelayMillis;
        long j11 = this.contentTriggerMaxDelayMillis;
        return (((((((((((((this.requiredNetworkType.hashCode() * 31) + (this.requiresCharging ? 1 : 0)) * 31) + (this.requiresDeviceIdle ? 1 : 0)) * 31) + (this.requiresBatteryNotLow ? 1 : 0)) * 31) + (this.requiresStorageNotLow ? 1 : 0)) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.contentUriTriggers.hashCode();
    }

    public final boolean requiresBatteryNotLow() {
        return this.requiresBatteryNotLow;
    }

    public final boolean requiresCharging() {
        return this.requiresCharging;
    }

    @RequiresApi(23)
    public final boolean requiresDeviceIdle() {
        return this.requiresDeviceIdle;
    }

    public final boolean requiresStorageNotLow() {
        return this.requiresStorageNotLow;
    }

    public Constraints(@NotNull NetworkType requiredNetworkType, boolean z10, boolean z11, boolean z12, boolean z13, long j10, long j11, @NotNull Set<ContentUriTrigger> contentUriTriggers) {
        Intrinsics.checkNotNullParameter(requiredNetworkType, "requiredNetworkType");
        Intrinsics.checkNotNullParameter(contentUriTriggers, "contentUriTriggers");
        this.requiredNetworkType = requiredNetworkType;
        this.requiresCharging = z10;
        this.requiresDeviceIdle = z11;
        this.requiresBatteryNotLow = z12;
        this.requiresStorageNotLow = z13;
        this.contentTriggerUpdateDelayMillis = j10;
        this.contentTriggerMaxDelayMillis = j11;
        this.contentUriTriggers = contentUriTriggers;
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z10, boolean z11, boolean z12, boolean z13, long j10, long j11, Set set, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? false : z11, (i10 & 8) != 0 ? false : z12, (i10 & 16) == 0 ? z13 : false, (i10 & 32) != 0 ? -1L : j10, (i10 & 64) == 0 ? j11 : -1L, (i10 & 128) != 0 ? y0.f() : set);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Constraints(@org.jetbrains.annotations.NotNull androidx.work.Constraints r13) {
        /*
            r12 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            boolean r3 = r13.requiresCharging
            boolean r4 = r13.requiresDeviceIdle
            androidx.work.NetworkType r2 = r13.requiredNetworkType
            boolean r5 = r13.requiresBatteryNotLow
            boolean r6 = r13.requiresStorageNotLow
            java.util.Set<androidx.work.Constraints$ContentUriTrigger> r11 = r13.contentUriTriggers
            long r7 = r13.contentTriggerUpdateDelayMillis
            long r9 = r13.contentTriggerMaxDelayMillis
            r1 = r12
            r1.<init>(r2, r3, r4, r5, r6, r7, r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Constraints.<init>(androidx.work.Constraints):void");
    }
}
