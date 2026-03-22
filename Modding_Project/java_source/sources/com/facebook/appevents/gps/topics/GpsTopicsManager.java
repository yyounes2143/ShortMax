package com.facebook.appevents.gps.topics;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import o4.a;
import org.jetbrains.annotations.NotNull;
/* compiled from: GpsTopicsManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGpsTopicsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GpsTopicsManager.kt\ncom/facebook/appevents/gps/topics/GpsTopicsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1549#2:110\n1620#2,3:111\n*S KotlinDebug\n*F\n+ 1 GpsTopicsManager.kt\ncom/facebook/appevents/gps/topics/GpsTopicsManager\n*L\n100#1:110\n100#1:111,3\n*E\n"})
/* loaded from: classes3.dex */
public final class GpsTopicsManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final GpsTopicsManager f15008a = new GpsTopicsManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f15009b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f15010c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicBoolean f15011d;

    static {
        String cls = GpsTopicsManager.class.toString();
        Intrinsics.checkNotNullExpressionValue(cls, "GpsTopicsManager::class.java.toString()");
        f15009b = cls;
        f15010c = c.b(new Function0<ExecutorService>() { // from class: com.facebook.appevents.gps.topics.GpsTopicsManager$executor$2
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: b */
            public final ExecutorService invoke() {
                return Executors.newCachedThreadPool();
            }
        });
        f15011d = new AtomicBoolean(false);
    }

    private GpsTopicsManager() {
    }

    public static final void a() {
        if (a.d(GpsTopicsManager.class)) {
            return;
        }
        try {
            f15011d.set(true);
        } catch (Throwable th2) {
            a.b(th2, GpsTopicsManager.class);
        }
    }
}
