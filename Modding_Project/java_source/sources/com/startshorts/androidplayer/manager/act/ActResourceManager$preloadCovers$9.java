package com.startshorts.androidplayer.manager.act;

import com.facebook.imagepipeline.request.ImageRequest;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import java.util.ArrayList;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* compiled from: ActResourceManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.act.ActResourceManager$preloadCovers$9", f = "ActResourceManager.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nActResourceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActResourceManager.kt\ncom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$9\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,199:1\n1#2:200\n1#2:211\n1611#3,9:201\n1863#3:210\n1864#3:212\n1620#3:213\n*S KotlinDebug\n*F\n+ 1 ActResourceManager.kt\ncom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$9\n*L\n125#1:211\n125#1:201,9\n125#1:210\n125#1:212\n125#1:213\n*E\n"})
/* loaded from: classes6.dex */
final class ActResourceManager$preloadCovers$9 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41591h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActResource f41592i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActResourceManager$preloadCovers$9(ActResource actResource, c<? super ActResourceManager$preloadCovers$9> cVar) {
        super(2, cVar);
        this.f41592i = actResource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ActResourceManager$preloadCovers$9(this.f41592i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ActResourceManager$preloadCovers$9) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f41591h == 0) {
            f.b(obj);
            ArrayList<String> arrayList = new ArrayList();
            String resourceMap = this.f41592i.getResourceMap();
            if (resourceMap != null && v.g(resourceMap)) {
                arrayList.add(resourceMap);
            }
            String resourceMapShrink = this.f41592i.getResourceMapShrink();
            if (resourceMapShrink != null && v.g(resourceMapShrink)) {
                arrayList.add(resourceMapShrink);
            }
            Logger logger = Logger.f41511a;
            logger.h("ActResourceManager", "preloadCovers " + arrayList);
            ArrayList arrayList2 = new ArrayList();
            for (String str : arrayList) {
                kk.f fVar = kk.f.f60747a;
                FrescoConfig frescoConfig = new FrescoConfig();
                frescoConfig.setUrl(str);
                ImageRequest m10 = fVar.m(frescoConfig);
                if (m10 != null) {
                    arrayList2.add(m10);
                }
            }
            kk.f.f60747a.w(arrayList2, false);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
