package com.startshorts.androidplayer.manager.player.feature;

import com.ss.ttvideoengine.SubDesInfoModel;
import com.ss.ttvideoengine.SubInfoSimpleCallBack;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.shorts.SubtitleConfig;
import com.startshorts.androidplayer.bean.shorts.SubtitleFile;
import com.startshorts.androidplayer.bean.subtitle.SubtitleText;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature;
import com.startshorts.androidplayer.manager.player.feature.f;
import fk.h0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lf.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import uh.l1;
/* compiled from: SubtitleFeature.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubtitleFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubtitleFeature.kt\ncom/startshorts/androidplayer/manager/player/feature/SubtitleFeature\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"})
/* loaded from: classes6.dex */
public final class f extends com.startshorts.androidplayer.manager.player.feature.b {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f42727h = new a(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f42728d;

    /* renamed from: e  reason: collision with root package name */
    private int f42729e;

    /* renamed from: f  reason: collision with root package name */
    private int f42730f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f42731g;

    /* compiled from: SubtitleFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SubtitleFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a(int i10, int i11, boolean z10, boolean z11);

        void b(@NotNull String str);
    }

    /* compiled from: SubtitleFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c extends SubInfoSimpleCallBack {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(f fVar, SubtitleText subtitleText) {
            b c10 = fVar.c();
            if (c10 != null) {
                String text = subtitleText.getText();
                if (text == null) {
                    text = "";
                }
                c10.b(text);
            }
        }

        @Override // com.ss.ttvideoengine.SubInfoSimpleCallBack, com.ss.ttvideoengine.SubInfoCallBack
        public void onSubInfoCallback(int i10, String str) {
            Logger logger = Logger.f41511a;
            logger.h("SubtitleFeature", "onSubInfoCallback -> info(" + str + ')');
            final SubtitleText mapSubtitleFrameInfo2SubtitleText = SubtitleText.Companion.mapSubtitleFrameInfo2SubtitleText(str);
            if (mapSubtitleFrameInfo2SubtitleText == null) {
                return;
            }
            h0 h0Var = h0.f51735a;
            final f fVar = f.this;
            h0Var.e(new Runnable() { // from class: nf.e
                @Override // java.lang.Runnable
                public final void run() {
                    f.c.b(f.this, mapSubtitleFrameInfo2SubtitleText);
                }
            });
        }

        @Override // com.ss.ttvideoengine.SubInfoSimpleCallBack, com.ss.ttvideoengine.SubInfoCallBack
        public void onSubLoadFinished(int i10) {
            Logger logger = Logger.f41511a;
            logger.h("SubtitleFeature", "onSubLoadFinished -> success(" + i10 + ')');
        }

        @Override // com.ss.ttvideoengine.SubInfoSimpleCallBack, com.ss.ttvideoengine.SubInfoCallBack
        public void onSubLoadFinished2(int i10, String str) {
            Logger logger = Logger.f41511a;
            logger.h("SubtitleFeature", "onSubLoadFinished2 -> success(" + i10 + ") info(" + str + ')');
        }
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void a(@NotNull TTVideoEngine player, @NotNull s params) {
        boolean z10;
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(params, "params");
        super.a(player, params);
        SubtitleConfig j10 = params.j();
        if (j10 != null) {
            z10 = j10.isEnable();
        } else {
            z10 = false;
        }
        if (!z10) {
            Logger.f41511a.e("SubtitleFeature", "init  -> subtitle not enable");
            return;
        }
        player.setIntOption(534, 1);
        player.setIntOption(533, 1);
        player.setIntOption(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPT_SUB_LOAD_TIME, 1);
        List<SubtitleFile> subtitleList = j10.getSubtitleList();
        if (subtitleList == null) {
            subtitleList = new ArrayList<>();
        }
        Pair<Boolean, JSONObject> h10 = h(subtitleList, this.f42729e, this.f42730f, this.f42731g);
        boolean booleanValue = h10.e().booleanValue();
        JSONObject f10 = h10.f();
        b bVar = this.f42728d;
        if (bVar != null) {
            bVar.a(this.f42729e, this.f42730f, this.f42731g, booleanValue);
        }
        player.setSubDesInfoModel(new SubDesInfoModel(f10));
        Logger logger = Logger.f41511a;
        logger.e("SubtitleFeature", "is local subtitle:" + booleanValue);
        player.setSubInfoCallBack(new c());
    }

    @Nullable
    public final b c() {
        return this.f42728d;
    }

    public final void d(int i10) {
        this.f42730f = i10;
    }

    public final void e(boolean z10) {
        this.f42731g = z10;
    }

    public final void f(@Nullable b bVar) {
        this.f42728d = bVar;
    }

    public final void g(int i10) {
        this.f42729e = i10;
    }

    @NotNull
    public final Pair<Boolean, JSONObject> h(@NotNull List<SubtitleFile> list, int i10, int i11, boolean z10) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (list.isEmpty()) {
            list = null;
        }
        boolean z11 = false;
        if (list != null) {
            for (SubtitleFile subtitleFile : list) {
                if (i10 > 0 && i11 > 0 && z10) {
                    SubtitleFile l10 = l1.f68455a.l(i10, i11, subtitleFile);
                    boolean z12 = !Intrinsics.areEqual(l10, subtitleFile);
                    subtitleFile = l10;
                    z11 = z12;
                }
                jSONArray.put(new JSONObject(lk.b.f62233a.h(subtitleFile)));
            }
        }
        jSONObject.put("list", jSONArray);
        return new Pair<>(Boolean.valueOf(z11), jSONObject);
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void release() {
        TTVideoEngine b10 = b();
        if (b10 != null) {
            b10.setSubInfoCallBack(null);
        }
        this.f42728d = null;
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    @NotNull
    public IVideoPlayerFeature.FeatureType type() {
        return IVideoPlayerFeature.FeatureType.SUBTITLE;
    }
}
