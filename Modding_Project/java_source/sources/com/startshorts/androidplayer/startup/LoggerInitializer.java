package com.startshorts.androidplayer.startup;

import android.content.Context;
import androidx.startup.Initializer;
import com.startshorts.androidplayer.log.Logger;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LoggerInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LoggerInitializer extends BaseInitializer<Object> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f44863b = new a(null);

    /* compiled from: LoggerInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public String c() {
        return "LoggerInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.t(GlobalContextInitializer.class);
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public Object e(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Logger logger = Logger.f41511a;
            logger.i();
            logger.k(new zd.a());
        } catch (Exception e10) {
            b("init exception -> " + e10.getMessage());
        } catch (UnsatisfiedLinkError e11) {
            b("init exception -> " + e11.getMessage());
        }
        return new Object();
    }
}
