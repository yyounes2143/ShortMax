package com.startshorts.androidplayer.ui.view.main.tab;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NormalMainTabView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NormalMainTabView extends BaseMainTabView {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ImageView f47471d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47472e;

    /* compiled from: NormalMainTabView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MainTab.Type.values().length];
            try {
                iArr[MainTab.Type.DISCOVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MainTab.Type.SHORTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MainTab.Type.REWARDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MainTab.Type.MY_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MainTab.Type.PROFILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NormalMainTabView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A(MainTab mainTab) {
        int i10;
        int i11 = a.$EnumSwitchMapping$0[mainTab.getType().ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 != 5) {
                            i10 = -1;
                        } else {
                            i10 = R$string.main_activity_tab_profile;
                        }
                    } else {
                        i10 = R$string.main_activity_tab_my_list;
                    }
                } else {
                    i10 = R$string.main_activity_tab_reward;
                }
            } else {
                i10 = R$string.main_activity_tab_shorts;
            }
        } else {
            i10 = R$string.main_activity_tab_discover;
        }
        if (i10 != -1) {
            BaseTextView baseTextView = this.f47472e;
            if (baseTextView != null) {
                baseTextView.setText(i10);
            }
            ImageView imageView = this.f47471d;
            if (imageView != null) {
                imageView.setContentDescription(getContext().getString(i10));
            }
        }
    }

    private final void B(MainTab mainTab) {
        int i10;
        if (mainTab.isSelected()) {
            i10 = R$color.color_main_activity_tab_text_selected;
        } else {
            i10 = R$color.color_main_activity_tab_text_normal;
        }
        BaseTextView baseTextView = this.f47472e;
        if (baseTextView != null) {
            baseTextView.setTextColor(ContextCompat.getColor(getContext(), i10));
        }
    }

    private final void C() {
        MainTab.Type type;
        ImageView imageView;
        MainTab mTab = getMTab();
        if (mTab != null) {
            type = mTab.getType();
        } else {
            type = null;
        }
        if (type == MainTab.Type.PROFILE && RewardsRepo.f44515a.q() && (imageView = this.f47471d) != null) {
            imageView.setImageResource(R$drawable.ic_main_tab_profile_normal_white);
        }
        View findViewById = findViewById(R$id.high_light_view);
        if (findViewById != null) {
            findViewById.setBackgroundColor(ContextCompat.getColor(getContext(), R$color.color_main_activity_tab_high_light_bg));
        }
        BaseTextView baseTextView = this.f47472e;
        if (baseTextView != null) {
            baseTextView.setTextColor(ContextCompat.getColor(getContext(), 17170443));
        }
    }

    private final void y(String str) {
        MainTab.Type type;
        int i10;
        MainTab.Type type2;
        ImageView imageView;
        MainTab mTab = getMTab();
        String str2 = null;
        if (mTab != null) {
            type = mTab.getType();
        } else {
            type = null;
        }
        if (type == MainTab.Type.PROFILE && RewardsRepo.f44515a.q() && (imageView = this.f47471d) != null) {
            imageView.setImageResource(R$drawable.ic_main_tab_profile_normal);
        }
        View findViewById = findViewById(R$id.high_light_view);
        if (findViewById != null) {
            findViewById.setBackgroundColor(ContextCompat.getColor(getContext(), 17170445));
        }
        BaseTextView baseTextView = this.f47472e;
        if (baseTextView != null) {
            Context context = getContext();
            MainTab mTab2 = getMTab();
            if (mTab2 != null && (type2 = mTab2.getType()) != null) {
                str2 = type2.name();
            }
            if (Intrinsics.areEqual(str, str2)) {
                i10 = R$color.color_main_activity_tab_text_selected;
            } else {
                i10 = R$color.color_main_activity_tab_text_normal;
            }
            baseTextView.setTextColor(ContextCompat.getColor(context, i10));
        }
    }

    private final void z(MainTab mainTab) {
        int i10;
        ImageView imageView;
        int i11 = a.$EnumSwitchMapping$0[mainTab.getType().ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 != 5) {
                            i10 = -1;
                        } else if (mainTab.isSelected()) {
                            i10 = R$drawable.ic_main_tab_profile_selected;
                        } else {
                            i10 = R$drawable.ic_main_tab_profile_normal;
                        }
                    } else if (mainTab.isSelected()) {
                        i10 = R$drawable.ic_main_tab_my_list_selected;
                    } else {
                        i10 = R$drawable.ic_main_tab_my_list_normal;
                    }
                } else if (mainTab.isSelected()) {
                    i10 = R$drawable.ic_main_tab_rewards_selected;
                } else {
                    i10 = R$drawable.ic_main_tab_rewards_normal;
                }
            } else if (mainTab.isSelected()) {
                i10 = R$drawable.ic_main_tab_shorts_selected;
            } else {
                i10 = R$drawable.ic_main_tab_shorts_normal;
            }
        } else if (mainTab.isSelected()) {
            i10 = R$drawable.ic_main_tab_discover_selected;
        } else {
            i10 = R$drawable.ic_main_tab_discover_normal;
        }
        if (i10 != -1 && (imageView = this.f47471d) != null) {
            imageView.setImageResource(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.a
    public void c(@NotNull String currentTabType, boolean z10) {
        Intrinsics.checkNotNullParameter(currentTabType, "currentTabType");
        if (z10) {
            C();
        } else {
            y(currentTabType);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_main_tab_normal;
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView, com.startshorts.androidplayer.ui.view.main.tab.a
    public void o(@NotNull MainTab.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        MainTab mTab = getMTab();
        if (mTab != null && mTab.getState() != state) {
            mTab.setState(state);
            z(mTab);
            B(mTab);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.u(context, attributeSet, i10);
        this.f47471d = (ImageView) findViewById(R$id.tab_iv);
        this.f47472e = (BaseTextView) findViewById(R$id.tab_tv);
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView
    public void v(@NotNull MainTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        z(tab);
        B(tab);
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView
    public void x(@NotNull MainTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        super.x(tab);
        z(tab);
        A(tab);
        B(tab);
    }
}
