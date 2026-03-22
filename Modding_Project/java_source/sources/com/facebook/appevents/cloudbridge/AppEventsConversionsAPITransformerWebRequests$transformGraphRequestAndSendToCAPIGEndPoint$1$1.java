package com.facebook.appevents.cloudbridge;

import com.facebook.internal.u0;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppEventsConversionsAPITransformerWebRequests.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1 extends Lambda implements Function2<String, Integer, Unit> {

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ List<Map<String, Object>> f14971d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1(List<? extends Map<String, ? extends Object>> list) {
        super(2);
        this.f14971d = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Integer num, List processedEvents) {
        HashSet hashSet;
        Intrinsics.checkNotNullParameter(processedEvents, "$processedEvents");
        hashSet = AppEventsConversionsAPITransformerWebRequests.f14963b;
        if (!CollectionsKt.g0(hashSet, num)) {
            AppEventsConversionsAPITransformerWebRequests.f14962a.g(num, processedEvents, 5);
        }
    }

    public final void d(@Nullable String str, @Nullable final Integer num) {
        final List<Map<String, Object>> list = this.f14971d;
        u0.C0(new Runnable() { // from class: com.facebook.appevents.cloudbridge.a
            @Override // java.lang.Runnable
            public final void run() {
                AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1.e(num, list);
            }
        });
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(String str, Integer num) {
        d(str, num);
        return Unit.f60915a;
    }
}
