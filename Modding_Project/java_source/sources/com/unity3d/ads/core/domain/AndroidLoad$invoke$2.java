package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.data.model.LoadResult;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.HeaderBiddingAdMarkupOuterClass;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidLoad.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidLoad$invoke$2", f = "AndroidLoad.kt", l = {72, 76, 93, 97, 136}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidLoad.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidLoad.kt\ncom/unity3d/ads/core/domain/AndroidLoad$invoke$2\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 AdResponseKt.kt\ngatewayprotocol/v1/AdResponseKtKt\n*L\n1#1,206:1\n79#2,5:207\n113#2,7:212\n79#2,5:220\n113#2,7:225\n1#3:219\n1#3:233\n10#4:232\n*S KotlinDebug\n*F\n+ 1 AndroidLoad.kt\ncom/unity3d/ads/core/domain/AndroidLoad$invoke$2\n*L\n74#1:207,5\n74#1:212,7\n95#1:220,5\n95#1:225,7\n118#1:233\n118#1:232\n*E\n"})
/* loaded from: classes7.dex */
final class AndroidLoad$invoke$2 extends SuspendLambda implements Function2<g0, c<? super LoadResult>, Object> {
    final /* synthetic */ AdRequestOuterClass.BannerSize $bannerSize;
    final /* synthetic */ Context $context;
    final /* synthetic */ HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup $headerBiddingAdMarkup;
    final /* synthetic */ UnityAdsLoadOptions $loadOptions;
    final /* synthetic */ ByteString $opportunityId;
    final /* synthetic */ String $placement;
    int I$0;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ AndroidLoad this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidLoad$invoke$2(AndroidLoad androidLoad, AdRequestOuterClass.BannerSize bannerSize, HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup, ByteString byteString, String str, UnityAdsLoadOptions unityAdsLoadOptions, Context context, c<? super AndroidLoad$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = androidLoad;
        this.$bannerSize = bannerSize;
        this.$headerBiddingAdMarkup = headerBiddingAdMarkup;
        this.$opportunityId = byteString;
        this.$placement = str;
        this.$loadOptions = unityAdsLoadOptions;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidLoad$invoke$2 androidLoad$invoke$2 = new AndroidLoad$invoke$2(this.this$0, this.$bannerSize, this.$headerBiddingAdMarkup, this.$opportunityId, this.$placement, this.$loadOptions, this.$context, cVar);
        androidLoad$invoke$2.L$0 = obj;
        return androidLoad$invoke$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super LoadResult> cVar) {
        return ((AndroidLoad$invoke$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02ff A[Catch: UnityAdsNetworkException -> 0x0027, TryCatch #7 {UnityAdsNetworkException -> 0x0027, blocks: (B:9:0x0020, B:118:0x03e2, B:120:0x03e8, B:122:0x03f6, B:123:0x0409, B:124:0x0410, B:127:0x0415, B:128:0x041a, B:96:0x02a7, B:100:0x02d3, B:102:0x02ff, B:104:0x031d, B:106:0x0386, B:107:0x0392, B:109:0x039f, B:110:0x03b0, B:111:0x03b6, B:115:0x03cf, B:95:0x029c, B:21:0x0062, B:80:0x023f, B:66:0x01a2, B:70:0x01ce, B:65:0x0197, B:29:0x00a1, B:50:0x0130, B:32:0x00b2, B:34:0x00be, B:36:0x00d6, B:41:0x00df, B:44:0x00e6, B:46:0x010c, B:72:0x0200, B:74:0x0223, B:76:0x0227, B:43:0x00e3), top: B:145:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x031d A[Catch: UnityAdsNetworkException -> 0x0027, TryCatch #7 {UnityAdsNetworkException -> 0x0027, blocks: (B:9:0x0020, B:118:0x03e2, B:120:0x03e8, B:122:0x03f6, B:123:0x0409, B:124:0x0410, B:127:0x0415, B:128:0x041a, B:96:0x02a7, B:100:0x02d3, B:102:0x02ff, B:104:0x031d, B:106:0x0386, B:107:0x0392, B:109:0x039f, B:110:0x03b0, B:111:0x03b6, B:115:0x03cf, B:95:0x029c, B:21:0x0062, B:80:0x023f, B:66:0x01a2, B:70:0x01ce, B:65:0x0197, B:29:0x00a1, B:50:0x0130, B:32:0x00b2, B:34:0x00be, B:36:0x00d6, B:41:0x00df, B:44:0x00e6, B:46:0x010c, B:72:0x0200, B:74:0x0223, B:76:0x0227, B:43:0x00e3), top: B:145:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03e1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03e8 A[Catch: UnityAdsNetworkException -> 0x0027, TryCatch #7 {UnityAdsNetworkException -> 0x0027, blocks: (B:9:0x0020, B:118:0x03e2, B:120:0x03e8, B:122:0x03f6, B:123:0x0409, B:124:0x0410, B:127:0x0415, B:128:0x041a, B:96:0x02a7, B:100:0x02d3, B:102:0x02ff, B:104:0x031d, B:106:0x0386, B:107:0x0392, B:109:0x039f, B:110:0x03b0, B:111:0x03b6, B:115:0x03cf, B:95:0x029c, B:21:0x0062, B:80:0x023f, B:66:0x01a2, B:70:0x01ce, B:65:0x0197, B:29:0x00a1, B:50:0x0130, B:32:0x00b2, B:34:0x00be, B:36:0x00d6, B:41:0x00df, B:44:0x00e6, B:46:0x010c, B:72:0x0200, B:74:0x0223, B:76:0x0227, B:43:0x00e3), top: B:145:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0410 A[Catch: UnityAdsNetworkException -> 0x0027, TryCatch #7 {UnityAdsNetworkException -> 0x0027, blocks: (B:9:0x0020, B:118:0x03e2, B:120:0x03e8, B:122:0x03f6, B:123:0x0409, B:124:0x0410, B:127:0x0415, B:128:0x041a, B:96:0x02a7, B:100:0x02d3, B:102:0x02ff, B:104:0x031d, B:106:0x0386, B:107:0x0392, B:109:0x039f, B:110:0x03b0, B:111:0x03b6, B:115:0x03cf, B:95:0x029c, B:21:0x0062, B:80:0x023f, B:66:0x01a2, B:70:0x01ce, B:65:0x0197, B:29:0x00a1, B:50:0x0130, B:32:0x00b2, B:34:0x00be, B:36:0x00d6, B:41:0x00df, B:44:0x00e6, B:46:0x010c, B:72:0x0200, B:74:0x0223, B:76:0x0227, B:43:0x00e3), top: B:145:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0174 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x027c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02d1  */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v2, types: [int] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r34) {
        /*
            Method dump skipped, instructions count: 1058
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidLoad$invoke$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
