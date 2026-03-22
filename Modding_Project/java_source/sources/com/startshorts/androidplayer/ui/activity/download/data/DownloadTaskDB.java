package com.startshorts.androidplayer.ui.activity.download.data;

import androidx.room.Database;
import androidx.room.RoomDatabase;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import wh.a;
/* compiled from: DownloadTaskDB.kt */
@Database(entities = {DownloadTaskInfo.class}, version = 1)
@Metadata
/* loaded from: classes7.dex */
public abstract class DownloadTaskDB extends RoomDatabase {
    @NotNull
    public abstract a e();
}
