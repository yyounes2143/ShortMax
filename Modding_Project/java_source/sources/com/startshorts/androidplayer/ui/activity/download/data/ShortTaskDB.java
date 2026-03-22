package com.startshorts.androidplayer.ui.activity.download.data;

import androidx.room.Database;
import androidx.room.RoomDatabase;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import wh.j;
/* compiled from: ShortTaskDB.kt */
@Database(entities = {ShortTaskInfo.class}, version = 1)
@Metadata
/* loaded from: classes7.dex */
public abstract class ShortTaskDB extends RoomDatabase {
    @NotNull
    public abstract j e();
}
