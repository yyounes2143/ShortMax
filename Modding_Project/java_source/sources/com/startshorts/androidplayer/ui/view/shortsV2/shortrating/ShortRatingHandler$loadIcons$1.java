package com.startshorts.androidplayer.ui.view.shortsV2.shortrating;

import com.facebook.imagepipeline.request.ImageRequest;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.ShortContentRatingInfo;
import com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShortRatingHandler.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler$loadIcons$1", f = "ShortRatingHandler.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nShortRatingHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortRatingHandler.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1#2:154\n1863#3,2:155\n*S KotlinDebug\n*F\n+ 1 ShortRatingHandler.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1\n*L\n111#1:155,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ShortRatingHandler$loadIcons$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f47911h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortPlayContentInfo f47912i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ShortRatingHandler f47913j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortRatingHandler$loadIcons$1(ShortPlayContentInfo shortPlayContentInfo, ShortRatingHandler shortRatingHandler, c<? super ShortRatingHandler$loadIcons$1> cVar) {
        super(2, cVar);
        this.f47912i = shortPlayContentInfo;
        this.f47913j = shortRatingHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
        r0 = r1.f47905a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.Unit j(java.util.List r0, com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler r1, com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo r2, java.util.List r3) {
        /*
            int r3 = r3.size()
            int r0 = r0.size()
            if (r3 != r0) goto L13
            com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler$b r0 = com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler.b(r1)
            if (r0 == 0) goto L13
            r0.a(r2)
        L13:
            kotlin.Unit r0 = kotlin.Unit.f60915a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler$loadIcons$1.j(java.util.List, com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler, com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo, java.util.List):kotlin.Unit");
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ShortRatingHandler$loadIcons$1(this.f47912i, this.f47913j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ShortRatingHandler$loadIcons$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ShortRatingHandler.b bVar;
        String icon;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f47911h == 0) {
            f.b(obj);
            final ArrayList arrayList = new ArrayList();
            ShortContentRatingInfo contentRatingResponse = this.f47912i.getContentRatingResponse();
            if (contentRatingResponse != null && (icon = contentRatingResponse.getIcon()) != null) {
                kk.f fVar = kk.f.f60747a;
                FrescoConfig frescoConfig = new FrescoConfig();
                frescoConfig.setUrl(icon);
                ImageRequest m10 = fVar.m(frescoConfig);
                if (m10 != null && !fVar.o(m10)) {
                    arrayList.add(m10);
                }
            }
            List<ShortContentRatingInfo> contentDescriptionResponseList = this.f47912i.getContentDescriptionResponseList();
            if (contentDescriptionResponseList != null) {
                for (ShortContentRatingInfo shortContentRatingInfo : contentDescriptionResponseList) {
                    String icon2 = shortContentRatingInfo.getIcon();
                    if (icon2 != null) {
                        kk.f fVar2 = kk.f.f60747a;
                        FrescoConfig frescoConfig2 = new FrescoConfig();
                        frescoConfig2.setUrl(icon2);
                        ImageRequest m11 = fVar2.m(frescoConfig2);
                        if (m11 != null && !fVar2.o(m11)) {
                            arrayList.add(m11);
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                bVar = this.f47913j.f47905a;
                if (bVar != null) {
                    bVar.a(this.f47912i);
                }
            } else {
                kk.f fVar3 = kk.f.f60747a;
                final ShortRatingHandler shortRatingHandler = this.f47913j;
                final ShortPlayContentInfo shortPlayContentInfo = this.f47912i;
                kk.f.v(fVar3, arrayList, null, new Function1() { // from class: com.startshorts.androidplayer.ui.view.shortsV2.shortrating.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit j10;
                        j10 = ShortRatingHandler$loadIcons$1.j(arrayList, shortRatingHandler, shortPlayContentInfo, (List) obj2);
                        return j10;
                    }
                }, 2, null);
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
