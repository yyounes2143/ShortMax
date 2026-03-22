package com.startshorts.androidplayer.manager.attribution.parser;

import android.os.Bundle;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.manager.event.EventManager;
import he.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import ud.b;
/* compiled from: BaseCampaignParser.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class BaseCampaignParser implements g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f41925a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f41926b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f41927c;

    static /* synthetic */ Object e(BaseCampaignParser baseCampaignParser, c<? super String> cVar) {
        return BaseCampaignProvider.f42007e.a(baseCampaignParser.a());
    }

    private final void g() {
        if (this.f41925a) {
            return;
        }
        Logger.f41511a.e("CampaignNewTag", "logParse");
        this.f41925a = true;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, a().getValue());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_info_parse", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object j(com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser r6, boolean r7, rs.c<? super com.startshorts.androidplayer.bean.campaign.CampaignInfo> r8) {
        /*
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser$parse$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser$parse$1 r0 = (com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser$parse$1) r0
            int r1 = r0.f41932l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41932l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser$parse$1 r0 = new com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser$parse$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f41930j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41932l
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            boolean r7 = r0.f41929i
            java.lang.Object r6 = r0.f41928h
            com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser r6 = (com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser) r6
            kotlin.f.b(r8)
            goto L47
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r8)
            r0.f41928h = r6
            r0.f41929i = r7
            r0.f41932l = r3
            java.lang.Object r8 = r6.d(r0)
            if (r8 != r1) goto L47
            return r1
        L47:
            java.lang.String r8 = (java.lang.String) r8
            r0 = 0
            java.lang.String r1 = "CampaignNewTag"
            if (r8 == 0) goto L93
            int r2 = r8.length()
            if (r2 != 0) goto L55
            goto L93
        L55:
            boolean r2 = r6.b(r8)
            if (r2 != 0) goto L5c
            goto L93
        L5c:
            if (r7 == 0) goto L64
            r6.g()     // Catch: java.lang.Exception -> L62
            goto L64
        L62:
            r2 = move-exception
            goto L69
        L64:
            com.startshorts.androidplayer.bean.campaign.CampaignInfo r0 = r6.k(r8, r7)     // Catch: java.lang.Exception -> L62
            goto L93
        L69:
            com.startshorts.androidplayer.log.Logger r3 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = r6.name()
            r4.append(r5)
            java.lang.String r5 = " parse failed -> "
            r4.append(r5)
            java.lang.String r5 = r2.getMessage()
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.e(r1, r4)
            if (r7 == 0) goto L93
            java.lang.String r2 = r2.getMessage()
            r6.h(r2)
        L93:
            if (r8 == 0) goto Lc6
            int r2 = r8.length()
            if (r2 != 0) goto L9c
            goto Lc6
        L9c:
            com.startshorts.androidplayer.log.Logger r2 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = r6.name()
            r3.append(r4)
            java.lang.String r4 = " parse -> parseInfo("
            r3.append(r4)
            r3.append(r8)
            java.lang.String r8 = ") parseResult("
            r3.append(r8)
            r3.append(r0)
            r8 = 41
            r3.append(r8)
            java.lang.String r8 = r3.toString()
            r2.e(r1, r8)
        Lc6:
            if (r7 == 0) goto Ld7
            com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider$a r7 = com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider.f42007e
            com.startshorts.androidplayer.manager.attribution.CampaignType r8 = r6.a()
            boolean r7 = r7.c(r8)
            if (r7 == 0) goto Ld7
            r6.l()
        Ld7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser.j(com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser, boolean, rs.c):java.lang.Object");
    }

    private final void l() {
        if (!f()) {
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", name() + " setHandled");
            b.f68412a.f3(a().getValue(), true);
        }
    }

    @Override // he.g
    @Nullable
    public Object c(boolean z10, @NotNull c<? super CampaignInfo> cVar) {
        return j(this, z10, cVar);
    }

    @Nullable
    public Object d(@NotNull c<? super String> cVar) {
        return e(this, cVar);
    }

    public final boolean f() {
        return b.f68412a.V(a().getValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h(@Nullable String str) {
        if (this.f41927c) {
            return;
        }
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "logParseFailed -- errMsg:" + str);
        this.f41927c = true;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, a().getValue());
        bundle.putString("err_msg", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_info_parse_failed", bundle, 0L, 4, null);
    }

    public final void i(@NotNull String adSource, @NotNull String parseResult) {
        Intrinsics.checkNotNullParameter(adSource, "adSource");
        Intrinsics.checkNotNullParameter(parseResult, "parseResult");
        if (this.f41926b) {
            return;
        }
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "logParseSuccess -- adSource:" + adSource + ", parseResult:" + parseResult);
        this.f41926b = true;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, a().getValue());
        bundle.putString("ad_source", adSource);
        bundle.putString("parse_result", parseResult);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_info_parse_success", bundle, 0L, 4, null);
    }

    @Nullable
    protected abstract CampaignInfo k(@NotNull String str, boolean z10);
}
