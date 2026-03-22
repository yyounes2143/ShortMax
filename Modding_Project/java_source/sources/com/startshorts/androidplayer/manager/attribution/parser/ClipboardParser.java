package com.startshorts.androidplayer.manager.attribution.parser;

import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignReporter;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.manager.event.EventManager;
import jk.l;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.b;
/* compiled from: ClipboardParser.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ClipboardParser extends BaseCampaignParser {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f41933d = new a(null);

    /* compiled from: ClipboardParser.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(@NotNull String info) {
            Intrinsics.checkNotNullParameter(info, "info");
            if (!StringsKt.b0(info, "clipUUid", false, 2, null) || !StringsKt.b0(info, CallAppDataKey.KEY_SHORT_PLAY_ID, false, 2, null)) {
                return false;
            }
            return true;
        }

        public final void b() {
            String a10 = BaseCampaignProvider.f42007e.a(CampaignType.GP_INSTALL_REFERRER);
            if (a10 == null || a10.length() == 0 || StringsKt.b0(a10, "organic", false, 2, null)) {
                b bVar = b.f68412a;
                if (bVar.W0()) {
                    Logger.f41511a.e("CampaignNewTag", "tryReportCampaignInfoAgain");
                    bVar.j4(false);
                    EventManager.s0(EventManager.f42463a, "web_parse_cb_result_report_again", null, 0L, 6, null);
                    CampaignReporter.f41888a.J(a10, true);
                }
            }
        }

        private a() {
        }
    }

    @Override // he.g
    @NotNull
    public CampaignType a() {
        return CampaignType.CLIPBOARD;
    }

    @Override // he.g
    public boolean b(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return f41933d.a(info);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f A[PHI: r7 
      PHI: (r7v6 java.lang.Object) = (r7v5 java.lang.Object), (r7v1 java.lang.Object) binds: [B:21:0x005c, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    @Override // com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser, he.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object c(boolean r6, @org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.campaign.CampaignInfo> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser$parse$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser$parse$1 r0 = (com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser$parse$1) r0
            int r1 = r0.f41938l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41938l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser$parse$1 r0 = new com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser$parse$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f41936j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41938l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L5f
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            boolean r6 = r0.f41935i
            java.lang.Object r2 = r0.f41934h
            com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser r2 = (com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser) r2
            kotlin.f.b(r7)
            goto L53
        L3e:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.attribution.CampaignProvider r7 = com.startshorts.androidplayer.manager.attribution.CampaignProvider.f41870a
            com.startshorts.androidplayer.manager.attribution.CampaignType r2 = com.startshorts.androidplayer.manager.attribution.CampaignType.CLIPBOARD
            r0.f41934h = r5
            r0.f41935i = r6
            r0.f41938l = r4
            java.lang.Object r7 = r7.l(r2, r0)
            if (r7 != r1) goto L52
            return r1
        L52:
            r2 = r5
        L53:
            r7 = 0
            r0.f41934h = r7
            r0.f41938l = r3
            java.lang.Object r7 = super.c(r6, r0)
            if (r7 != r1) goto L5f
            return r1
        L5f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser.c(boolean, rs.c):java.lang.Object");
    }

    @Override // com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser
    @Nullable
    protected CampaignInfo k(@NotNull String info, boolean z10) {
        Intrinsics.checkNotNullParameter(info, "info");
        CampaignInfo campaignInfo = (CampaignInfo) l.b(info, CampaignInfo.class);
        Integer num = null;
        if (campaignInfo != null) {
            campaignInfo.setCampaign(a().getValue());
        } else {
            campaignInfo = null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("shortPlayId:");
        if (campaignInfo != null) {
            num = Integer.valueOf(campaignInfo.getShortPlayId());
        }
        sb2.append(num);
        i("", sb2.toString());
        Logger.f41511a.e("CampaignNewTag", "ClipboardParser parseInternal campaignInfo:" + campaignInfo);
        if (campaignInfo != null) {
            f41933d.b();
        }
        return campaignInfo;
    }

    @Override // he.g
    @NotNull
    public String name() {
        return "ClipboardParser";
    }

    @Override // he.g
    @NotNull
    public CampaignParserPriority priority() {
        return CampaignParserPriority.CLIPBOARD;
    }
}
