package com.moloco.sdk.acm.db;

import android.content.Context;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@TypeConverters({com.moloco.sdk.acm.db.a.class})
@Database(entities = {b.class}, version = 1)
@Metadata
/* loaded from: classes6.dex */
public abstract class MetricsDb extends RoomDatabase {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f31835a = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public static volatile MetricsDb f31836b;

    @SourceDebugExtension({"SMAP\nMetricsDb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricsDb.kt\ncom/moloco/sdk/acm/db/MetricsDb$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,40:1\n1#2:41\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MetricsDb a(Context context) {
            try {
                Context applicationContext = context.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                return (MetricsDb) Room.databaseBuilder(applicationContext, MetricsDb.class, "metrics-db").build();
            } catch (Exception e10) {
                throw new IllegalStateException("Database creation failed", e10);
            }
        }

        @NotNull
        public final MetricsDb b(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            MetricsDb metricsDb = MetricsDb.f31836b;
            if (metricsDb == null) {
                synchronized (this) {
                    metricsDb = MetricsDb.f31836b;
                    if (metricsDb == null) {
                        MetricsDb a10 = MetricsDb.f31835a.a(context);
                        MetricsDb.f31836b = a10;
                        metricsDb = a10;
                    }
                }
            }
            return metricsDb;
        }

        public a() {
        }
    }

    @NotNull
    public abstract d g();
}
