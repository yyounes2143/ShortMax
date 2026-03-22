package com.startshorts.androidplayer.repo.config;

import android.content.Context;
import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.AppConfigureManager;
import fk.u;
import gt.g0;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ms.k;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfigRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.RemoteConfigRepo$1$1$3", f = "RemoteConfigRepo.kt", l = {85}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRemoteConfigRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,233:1\n462#2:234\n412#2:235\n1246#3,4:236\n774#3:240\n865#3,2:241\n1863#3,2:247\n126#4:243\n153#4,3:244\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3\n*L\n55#1:234\n55#1:235\n55#1:236,4\n59#1:240\n59#1:241,2\n75#1:247,2\n73#1:243\n73#1:244,3\n*E\n"})
/* loaded from: classes7.dex */
public final class RemoteConfigRepo$1$1$3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43794h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Map<String, String> f43795i;

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3\n*L\n1#1,121:1\n75#2:122\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(((RemoteConfigValue) ((Pair) t11).f()).getFrom(), ((RemoteConfigValue) ((Pair) t10).f()).getFrom());
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$1\n+ 2 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3\n*L\n1#1,171:1\n75#2:172\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b<T> implements Comparator {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comparator f43796a;

        public b(Comparator comparator) {
            this.f43796a = comparator;
        }

        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            int compare = this.f43796a.compare(t10, t11);
            if (compare == 0) {
                return ps.a.a(((RemoteConfigValue) ((Pair) t11).f()).getValue(), ((RemoteConfigValue) ((Pair) t10).f()).getValue());
            }
            return compare;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfigRepo$1$1$3(Map<String, String> map, c<? super RemoteConfigRepo$1$1$3> cVar) {
        super(2, cVar);
        this.f43795i = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RemoteConfigRepo$1$1$3(this.f43795i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RemoteConfigRepo$1$1$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43794h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Map<String, RemoteConfigValue> p10 = RemoteConfigRepo.f43788a.p();
            LinkedHashMap linkedHashMap = new LinkedHashMap(p0.e(p10.size()));
            Iterator<T> it = p10.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap.put(entry.getKey(), ((RemoteConfigValue) entry.getValue()).getValue());
            }
            if (!Intrinsics.areEqual(linkedHashMap, this.f43795i)) {
                Set k10 = y0.k(linkedHashMap.keySet(), this.f43795i.keySet());
                Set k11 = y0.k(this.f43795i.keySet(), linkedHashMap.keySet());
                Map<String, String> map = this.f43795i;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : CollectionsKt.w0(linkedHashMap.keySet(), this.f43795i.keySet())) {
                    String str = (String) obj2;
                    if (!Intrinsics.areEqual(map.get(str), linkedHashMap.get(str))) {
                        arrayList.add(obj2);
                    }
                }
                Logger logger = Logger.f41511a;
                logger.e("RemoteConfigRepo", "onFetchRemoteConfigComplete-> abtest value changed\nmapAfter=" + linkedHashMap.keySet() + "\nAdded keys: " + CollectionsKt.A0(k10, ", ", null, null, 0, null, null, 62, null) + "\nDeleted keys: " + CollectionsKt.A0(k11, ", ", null, null, 0, null, null, 62, null) + "\nChanged keys: " + CollectionsKt.A0(arrayList, ", ", null, null, 0, null, null, 62, null));
                RemoteConfigRepo.f43793f = linkedHashMap;
                RemoteConfigRepo remoteConfigRepo = RemoteConfigRepo.f43788a;
                if (remoteConfigRepo.s()) {
                    Map<String, RemoteConfigValue> p11 = remoteConfigRepo.p();
                    ArrayList arrayList2 = new ArrayList(p11.size());
                    for (Map.Entry<String, RemoteConfigValue> entry2 : p11.entrySet()) {
                        arrayList2.add(k.a(entry2.getKey(), entry2.getValue()));
                    }
                    for (Pair pair : CollectionsKt.U0(arrayList2, new b(new a()))) {
                        String str2 = (String) pair.e();
                        RemoteConfigValue remoteConfigValue = (RemoteConfigValue) pair.f();
                        if (!StringsKt.b0(str2, "_ios", false, 2, null) && !StringsKt.b0(str2, "ios_", false, 2, null) && !Intrinsics.areEqual(str2, "adUnitId_android") && !Intrinsics.areEqual(str2, "adUnitId_android_v2")) {
                            Logger logger2 = Logger.f41511a;
                            logger2.e("RemoteConfigRepo", "abtest value changed -> " + remoteConfigValue.toString(str2));
                        }
                    }
                    Logger.f41511a.e("RemoteConfigRepo", "abtest value changed -> AppConfigureManager.init");
                    AppConfigureManager appConfigureManager = AppConfigureManager.f42186a;
                    Context b10 = u.f51776a.b();
                    this.f43794h = 1;
                    if (appConfigureManager.a(b10, false, this) == f10) {
                        return f10;
                    }
                }
            } else {
                Logger.f41511a.e("RemoteConfigRepo", "onFetchRemoteConfigComplete-> abtest value no change");
            }
        }
        return Unit.f60915a;
    }
}
