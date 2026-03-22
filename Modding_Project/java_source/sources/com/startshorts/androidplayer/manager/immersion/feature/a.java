package com.startshorts.androidplayer.manager.immersion.feature;

import com.ss.ttvideoengine.DataLoaderHelper;
import com.startshorts.androidplayer.bean.ad.AdConfig;
import com.startshorts.androidplayer.bean.ad.AdNewConfig;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.ad.BackHomeInt;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a implements IImmersionFeature {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private InterfaceC0624a f42594a;

    /* compiled from: AdFeature.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.manager.immersion.feature.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public interface InterfaceC0624a {
        void a();
    }

    /* compiled from: AdFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_EPISODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_RELEASE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c(a aVar, boolean z10) {
        InterfaceC0624a interfaceC0624a = aVar.f42594a;
        if (interfaceC0624a != null) {
            interfaceC0624a.a();
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Object obj;
        Boolean bool;
        boolean z10;
        Object obj2;
        Boolean bool2;
        Object obj3;
        String str;
        String str2;
        Object obj4;
        Object obj5;
        Boolean bool3;
        Object obj6;
        String str3;
        Object obj7;
        Object obj8;
        Boolean bool4;
        Object obj9;
        Boolean bool5;
        Object obj10;
        String str4;
        String str5;
        AdConfig adConfig;
        BackHomeInt backHomeInt;
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = b.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i10 != 1) {
            String str6 = "";
            boolean z11 = false;
            BaseEpisode baseEpisode = null;
            Boolean bool6 = null;
            if (i10 != 2) {
                if (i10 == 3) {
                    AdNewConfig a10 = ud.a.f68411a.a();
                    if (a10 != null && (adConfig = a10.getAdConfig()) != null && (backHomeInt = adConfig.getBackHomeInt()) != null) {
                        z11 = backHomeInt.isEnableShow();
                    }
                    if (z11) {
                        HashMap<String, Object> a11 = message.a();
                        if (a11 != null) {
                            obj8 = a11.get("show_mini_window");
                        } else {
                            obj8 = null;
                        }
                        if (obj8 instanceof Boolean) {
                            bool4 = (Boolean) obj8;
                        } else {
                            bool4 = null;
                        }
                        Boolean bool7 = Boolean.FALSE;
                        boolean areEqual = Intrinsics.areEqual(bool4, bool7);
                        HashMap<String, Object> a12 = message.a();
                        if (a12 != null) {
                            obj9 = a12.get("finished_by_other_immersion_activity");
                        } else {
                            obj9 = null;
                        }
                        if (obj9 instanceof Boolean) {
                            bool5 = (Boolean) obj9;
                        } else {
                            bool5 = null;
                        }
                        boolean areEqual2 = Intrinsics.areEqual(bool5, bool7);
                        HashMap<String, Object> a13 = message.a();
                        if (a13 != null) {
                            obj10 = a13.get("from");
                        } else {
                            obj10 = null;
                        }
                        if (obj10 instanceof String) {
                            str4 = (String) obj10;
                        } else {
                            str4 = null;
                        }
                        if (str4 == null) {
                            str5 = "";
                        } else {
                            str5 = str4;
                        }
                        if (!areEqual && !areEqual2) {
                            com.startshorts.androidplayer.manager.configure.ad.c.w(com.startshorts.androidplayer.manager.configure.ad.c.f42340a, str5, fk.a.f51702a.d(), "exit_immersion_page", null, true, null, null, 0L, 0L, false, null, DataLoaderHelper.DATALOADER_KEY_INT_NET_LOG_MAX_SIZE, null);
                            return;
                        }
                    }
                    HashMap<String, Object> a14 = message.a();
                    if (a14 != null) {
                        obj5 = a14.get("show_mini_window");
                    } else {
                        obj5 = null;
                    }
                    if (obj5 instanceof Boolean) {
                        bool3 = (Boolean) obj5;
                    } else {
                        bool3 = null;
                    }
                    Boolean bool8 = Boolean.TRUE;
                    boolean areEqual3 = Intrinsics.areEqual(bool3, bool8);
                    HashMap<String, Object> a15 = message.a();
                    if (a15 != null) {
                        obj6 = a15.get("from");
                    } else {
                        obj6 = null;
                    }
                    if (obj6 instanceof String) {
                        str3 = (String) obj6;
                    } else {
                        str3 = null;
                    }
                    if (str3 != null) {
                        str6 = str3;
                    }
                    HashMap<String, Object> a16 = message.a();
                    if (a16 != null) {
                        obj7 = a16.get("finished_by_other_immersion_activity");
                    } else {
                        obj7 = null;
                    }
                    if (obj7 instanceof Boolean) {
                        bool6 = (Boolean) obj7;
                    }
                    boolean areEqual4 = Intrinsics.areEqual(bool6, bool8);
                    if (!areEqual3 && !areEqual4) {
                        com.startshorts.androidplayer.manager.configure.ad.c cVar = com.startshorts.androidplayer.manager.configure.ad.c.f42340a;
                        cVar.m();
                        cVar.r(str6, fk.a.f51702a.d());
                    }
                    com.startshorts.androidplayer.manager.configure.ad.c.f42340a.g("watch_continuous");
                }
                return;
            }
            AdManager adManager = AdManager.f41600a;
            if (adManager.O()) {
                return;
            }
            HashMap<String, Object> a17 = message.a();
            if (a17 != null) {
                obj = a17.get("is_enable_interstitial_ad");
            } else {
                obj = null;
            }
            if (obj instanceof Boolean) {
                bool = (Boolean) obj;
            } else {
                bool = null;
            }
            if (bool != null) {
                z10 = bool.booleanValue();
            } else {
                z10 = false;
            }
            HashMap<String, Object> a18 = message.a();
            if (a18 != null) {
                obj2 = a18.get("is_show_interstitial_ad");
            } else {
                obj2 = null;
            }
            if (obj2 instanceof Boolean) {
                bool2 = (Boolean) obj2;
            } else {
                bool2 = null;
            }
            if (bool2 != null) {
                z11 = bool2.booleanValue();
            }
            HashMap<String, Object> a19 = message.a();
            if (a19 != null) {
                obj3 = a19.get("from");
            } else {
                obj3 = null;
            }
            if (obj3 instanceof String) {
                str = (String) obj3;
            } else {
                str = null;
            }
            if (str == null) {
                str2 = "";
            } else {
                str2 = str;
            }
            if (z10 && z11) {
                HashMap<String, Object> a20 = message.a();
                if (a20 != null) {
                    obj4 = a20.get("episode");
                } else {
                    obj4 = null;
                }
                if (obj4 instanceof BaseEpisode) {
                    baseEpisode = (BaseEpisode) obj4;
                }
                com.startshorts.androidplayer.manager.configure.ad.c.w(com.startshorts.androidplayer.manager.configure.ad.c.f42340a, str2, fk.a.f51702a.d(), "immersion_switch_episode", baseEpisode, true, null, null, 0L, 0L, false, new Function1() { // from class: hf.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj11) {
                        Unit c10;
                        c10 = com.startshorts.androidplayer.manager.immersion.feature.a.c(com.startshorts.androidplayer.manager.immersion.feature.a.this, ((Boolean) obj11).booleanValue());
                        return c10;
                    }
                }, 992, null);
            }
            adManager.a0(AdScene.INTERSTITIAL);
            return;
        }
        AdManager adManager2 = AdManager.f41600a;
        adManager2.a0(AdScene.REWARD);
        adManager2.a0(AdScene.INTERSTITIAL);
    }

    public final void d(@Nullable InterfaceC0624a interfaceC0624a) {
        this.f42594a = interfaceC0624a;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.AD;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
