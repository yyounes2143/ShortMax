package com.startshorts.androidplayer.db.model;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import lk.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DbEvent.kt */
@Entity(tableName = "DbEvent")
@Metadata
/* loaded from: classes6.dex */
public final class DbEvent {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int IDLE = 0;
    public static final int UPLOADING = 1;
    @ColumnInfo(name = "app_version")
    @Nullable
    private String appVersion;
    @ColumnInfo(name = "check_time")
    private long checkTime;
    @ColumnInfo(name = "event_extra")
    @Nullable
    private String eventExtra;
    @ColumnInfo(name = "event_id")
    @Nullable
    private String eventId;
    @ColumnInfo(name = "event_name")
    @Nullable
    private String eventName;
    @ColumnInfo(name = "event_time")
    private long eventTime;
    @PrimaryKey(autoGenerate = true)
    @c
    private long localId;
    @ColumnInfo(name = "local_time")
    private long localTime;
    @c
    private int status;
    @Nullable
    private String uid;

    /* compiled from: DbEvent.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Nullable
    public final String getAppVersion() {
        return this.appVersion;
    }

    public final long getCheckTime() {
        return this.checkTime;
    }

    @Nullable
    public final String getEventExtra() {
        return this.eventExtra;
    }

    @Nullable
    public final String getEventId() {
        return this.eventId;
    }

    @Nullable
    public final String getEventName() {
        return this.eventName;
    }

    public final long getEventTime() {
        return this.eventTime;
    }

    public final long getLocalId() {
        return this.localId;
    }

    public final long getLocalTime() {
        return this.localTime;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    public final void setAppVersion(@Nullable String str) {
        this.appVersion = str;
    }

    public final void setCheckTime(long j10) {
        this.checkTime = j10;
    }

    public final void setEventExtra(@Nullable String str) {
        this.eventExtra = str;
    }

    public final void setEventId(@Nullable String str) {
        this.eventId = str;
    }

    public final void setEventName(@Nullable String str) {
        this.eventName = str;
    }

    public final void setEventTime(long j10) {
        this.eventTime = j10;
    }

    public final void setLocalId(long j10) {
        this.localId = j10;
    }

    public final void setLocalTime(long j10) {
        this.localTime = j10;
    }

    public final void setStatus(int i10) {
        this.status = i10;
    }

    public final void setUid(@Nullable String str) {
        this.uid = str;
    }

    @NotNull
    public String toString() {
        return "DbEvent(localId=" + this.localId + ", uid=" + this.uid + ", appVersion=" + this.appVersion + ", eventId=" + this.eventId + ", eventName=" + this.eventName + ", eventExtra=" + this.eventExtra + ", eventTime=" + this.eventTime + ", localTime=" + this.localTime + ", checkTime=" + this.checkTime + ", status=" + this.status + ')';
    }
}
