package com.startshorts.androidplayer.db;

import androidx.room.RoomDatabase;
import com.startshorts.androidplayer.db.model.DbEvent;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
import vd.a;
/* compiled from: Database.kt */
@androidx.room.Database(entities = {DbEvent.class}, version = 1)
@Metadata
/* loaded from: classes6.dex */
public abstract class Database extends RoomDatabase {
    @Nullable
    public abstract a e();
}
