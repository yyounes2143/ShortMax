package com.mbridge.msdk.dycreator.binding;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.dycreator.baseview.MBApkInfoView;
import com.mbridge.msdk.dycreator.baseview.MBFeedBack;
import com.mbridge.msdk.dycreator.baseview.MBLogoTextView;
import com.mbridge.msdk.dycreator.baseview.MBSplashClickView;
import com.mbridge.msdk.dycreator.baseview.MBSplashImageBgView;
import com.mbridge.msdk.dycreator.baseview.MBSplashPortView;
import com.mbridge.msdk.dycreator.baseview.MBSplashShakeView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.subjectfactory.a;
import com.mbridge.msdk.dycreator.viewmodel.BaseViewModel;
import com.mbridge.msdk.dycreator.viewobserver.h;
import com.mbridge.msdk.dycreator.viewobserver.i;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: MBDataBinding.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: g  reason: collision with root package name */
    private static volatile b f26421g;

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.dycreator.viewobserver.d f26422a = (com.mbridge.msdk.dycreator.viewobserver.d) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(a.b.VIEW_OBSERVER);

    /* renamed from: b  reason: collision with root package name */
    private com.mbridge.msdk.dycreator.viewobserver.c f26423b = (com.mbridge.msdk.dycreator.viewobserver.c) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(a.b.CLICK_OBSERVER);

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.dycreator.viewobserver.f f26424c = (com.mbridge.msdk.dycreator.viewobserver.f) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(a.b.EFFECT_OBSERVER);

    /* renamed from: d  reason: collision with root package name */
    private h f26425d = (h) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(a.b.REPORT_OBSERVER);

    /* renamed from: e  reason: collision with root package name */
    private BaseViewModel f26426e;

    /* renamed from: f  reason: collision with root package name */
    private com.mbridge.msdk.shake.b f26427f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBDataBinding.java */
    /* loaded from: classes5.dex */
    public class a implements com.mbridge.msdk.dycreator.viewobserver.g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f26428a;

        a(View view) {
            this.f26428a = view;
        }

        @Override // com.mbridge.msdk.dycreator.viewobserver.g
        public void a(Object obj) {
            try {
                View view = this.f26428a;
                if (view instanceof InterBase) {
                    b.this.b((InterBase) view, obj);
                }
            } catch (Exception e10) {
                p0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBDataBinding.java */
    /* renamed from: com.mbridge.msdk.dycreator.binding.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0359b implements com.mbridge.msdk.dycreator.viewobserver.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f26430a;

        C0359b(View view) {
            this.f26430a = view;
        }

        @Override // com.mbridge.msdk.dycreator.viewobserver.e
        public void a(Object obj) {
            try {
                View view = this.f26430a;
                if (view instanceof InterBase) {
                    b.this.a((InterBase) view, obj);
                }
            } catch (Exception e10) {
                p0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBDataBinding.java */
    /* loaded from: classes5.dex */
    public class c implements i {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f26432a;

        c(View view) {
            this.f26432a = view;
        }

        @Override // com.mbridge.msdk.dycreator.viewobserver.i
        public void a(Object obj) {
            try {
                View view = this.f26432a;
                if (view instanceof InterBase) {
                    b.this.c((InterBase) view, obj);
                }
            } catch (Exception e10) {
                p0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBDataBinding.java */
    /* loaded from: classes5.dex */
    public class d implements com.mbridge.msdk.dycreator.viewobserver.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f26434a;

        d(View view) {
            this.f26434a = view;
        }

        @Override // com.mbridge.msdk.dycreator.viewobserver.b
        public void a(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                if (com.mbridge.msdk.dycreator.utils.d.a(this.f26434a, (com.mbridge.msdk.dycreator.viewdata.base.a) obj)) {
                    b.this.a(this.f26434a, obj);
                }
            } catch (Exception e10) {
                p0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBDataBinding.java */
    /* loaded from: classes5.dex */
    public class e implements DyCountDownListenerWrapper {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f26436a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f26437b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f26438c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ View f26439d;

        e(boolean z10, String str, String str2, View view) {
            this.f26436a = z10;
            this.f26437b = str;
            this.f26438c = str2;
            this.f26439d = view;
        }

        @Override // com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper
        public void getCountDownValue(int i10) {
            if (i10 == 0) {
                SplashResData splashResData = new SplashResData();
                splashResData.seteAction(EAction.CLOSE);
                EventBus.getDefault().post(splashResData);
                return;
            }
            ((TextView) this.f26439d).setText(com.mbridge.msdk.dycreator.utils.d.a(this.f26436a, i10, this.f26437b, this.f26438c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBDataBinding.java */
    /* loaded from: classes5.dex */
    public class f implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.dycreator.viewdata.base.a f26441a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f26442b;

        f(com.mbridge.msdk.dycreator.viewdata.base.a aVar, View view) {
            this.f26441a = aVar;
            this.f26442b = view;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            View view = this.f26442b;
            if (view != null) {
                ((ImageView) view).setBackgroundColor(-7829368);
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            boolean z10;
            int orientation;
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled()) {
                        if (bitmap.getWidth() > bitmap.getHeight()) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (this.f26441a.getEffectData().getOrientation() == 1) {
                            orientation = this.f26442b.getResources().getConfiguration().orientation;
                        } else {
                            orientation = this.f26441a.getEffectData().getOrientation();
                        }
                        if (orientation == 1) {
                            if (z10) {
                                View view = this.f26442b;
                                if (view instanceof MBSplashPortView) {
                                    if (view.getParent() != null) {
                                        ((ViewGroup) this.f26442b.getParent()).setVisibility(8);
                                        return;
                                    }
                                    return;
                                } else if (view instanceof MBSplashImageBgView) {
                                    view.setVisibility(0);
                                    Bitmap a10 = o0.a(bitmap);
                                    ((MBSplashImageBgView) this.f26442b).setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    ((MBSplashImageBgView) this.f26442b).setImageBitmap(a10);
                                    return;
                                }
                            } else {
                                View view2 = this.f26442b;
                                if (view2 instanceof MBSplashPortView) {
                                    view2.setVisibility(0);
                                    ((MBSplashPortView) this.f26442b).setScaleType(ImageView.ScaleType.FIT_CENTER);
                                    ((MBSplashPortView) this.f26442b).setImageBitmap(bitmap);
                                    return;
                                } else if (view2 instanceof MBSplashImageBgView) {
                                    view2.setVisibility(8);
                                    return;
                                } else if (view2 instanceof InterBase) {
                                    String effectDes = ((InterBase) view2).getEffectDes();
                                    ViewGroup viewGroup = (ViewGroup) this.f26442b.getParent();
                                    if (viewGroup != null) {
                                        com.mbridge.msdk.dycreator.utils.d.a(effectDes, viewGroup, true);
                                    }
                                }
                            }
                        } else if (z10) {
                            View view3 = this.f26442b;
                            if (view3 instanceof MBSplashPortView) {
                                view3.setVisibility(0);
                                ((MBSplashPortView) this.f26442b).setScaleType(ImageView.ScaleType.FIT_XY);
                                ((ImageView) this.f26442b).setImageBitmap(bitmap);
                                return;
                            } else if (view3 instanceof MBSplashImageBgView) {
                                view3.setVisibility(8);
                                ((MBSplashImageBgView) this.f26442b).setImageBitmap(o0.a(bitmap));
                                return;
                            } else if (view3 instanceof InterBase) {
                                String effectDes2 = ((InterBase) view3).getEffectDes();
                                ViewGroup viewGroup2 = (ViewGroup) this.f26442b.getParent();
                                if (viewGroup2 != null) {
                                    com.mbridge.msdk.dycreator.utils.d.a(effectDes2, viewGroup2, true);
                                }
                            }
                        } else {
                            View view4 = this.f26442b;
                            if (view4 instanceof MBSplashPortView) {
                                view4.setVisibility(0);
                                ((MBSplashPortView) this.f26442b).setImageBitmap(bitmap);
                                return;
                            } else if (view4 instanceof MBSplashImageBgView) {
                                view4.setVisibility(0);
                                Bitmap a11 = o0.a(bitmap);
                                ((MBSplashImageBgView) this.f26442b).setScaleType(ImageView.ScaleType.CENTER_CROP);
                                ((MBSplashImageBgView) this.f26442b).setImageBitmap(a11);
                                return;
                            } else if (view4 instanceof InterBase) {
                                String effectDes3 = ((InterBase) view4).getEffectDes();
                                ViewGroup viewGroup3 = (ViewGroup) this.f26442b.getParent();
                                if (viewGroup3 != null) {
                                    com.mbridge.msdk.dycreator.utils.d.a(effectDes3, viewGroup3, true);
                                }
                            }
                        }
                        ((ImageView) this.f26442b).setImageBitmap(bitmap);
                        return;
                    }
                } catch (Exception e10) {
                    p0.b("MBDataBinding", e10.getMessage());
                    return;
                }
            }
            ((ImageView) this.f26442b).setBackgroundColor(-7829368);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBDataBinding.java */
    /* loaded from: classes5.dex */
    public class g extends com.mbridge.msdk.shake.b {

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ View f26444g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ MBSplashData f26445h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(int i10, int i11, View view, MBSplashData mBSplashData) {
            super(i10, i11);
            this.f26444g = view;
            this.f26445h = mBSplashData;
        }

        @Override // com.mbridge.msdk.shake.b
        public void a() {
            View view = this.f26444g;
            if (view != null) {
                try {
                    if (view.getGlobalVisibleRect(new Rect())) {
                        SplashResData splashResData = new SplashResData();
                        this.f26445h.setClickType(4);
                        splashResData.setBaseViewData(this.f26445h);
                        splashResData.seteAction(EAction.DOWNLOAD);
                        EventBus.getDefault().post(splashResData);
                        com.mbridge.msdk.shake.a.a().b(b.this.f26427f);
                    }
                } catch (Exception e10) {
                    p0.b("MBDataBinding", e10.getMessage());
                }
            }
        }
    }

    private b() {
    }

    public void d(View view) {
        a(new a(view), view.getId());
    }

    public void b(View view) {
        a(new c(view), view.getId());
    }

    public void c(View view) {
        a(new C0359b(view), view.getId());
    }

    public static b a() {
        if (f26421g == null) {
            synchronized (b.class) {
                try {
                    if (f26421g == null) {
                        f26421g = new b();
                    }
                } finally {
                }
            }
        }
        return f26421g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(InterBase interBase, Object obj) {
        if (interBase == null || obj == null) {
            return;
        }
        String reportDes = interBase.getReportDes();
        if (TextUtils.isEmpty(reportDes)) {
            return;
        }
        try {
            if (!(obj instanceof com.mbridge.msdk.dycreator.viewdata.base.a) || ((com.mbridge.msdk.dycreator.viewdata.base.a) obj).getBindData() == null) {
                return;
            }
            interBase.setDynamicReport(reportDes, ((com.mbridge.msdk.dycreator.viewdata.base.a) obj).getBindData());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(InterBase interBase, Object obj) {
        if (interBase == null || obj == null) {
            return;
        }
        String bindDataDes = interBase.getBindDataDes();
        if (TextUtils.isEmpty(bindDataDes)) {
            return;
        }
        try {
            Object a10 = com.mbridge.msdk.dycreator.utils.d.a(obj, bindDataDes);
            if (a10 == null) {
                return;
            }
            if (interBase instanceof ViewGroup) {
                b((ViewGroup) interBase, a10, (com.mbridge.msdk.dycreator.viewdata.base.a) obj);
            } else if (interBase instanceof View) {
                a((View) interBase, a10, (com.mbridge.msdk.dycreator.viewdata.base.a) obj);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(i iVar, int i10) {
        com.mbridge.msdk.dycreator.viewobserver.d dVar = this.f26422a;
        if (dVar != null) {
            dVar.a(iVar, i10);
        }
    }

    private void b(ViewGroup viewGroup, Object obj, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        if (viewGroup != null) {
            if (viewGroup instanceof MBSplashClickView) {
                if (aVar != null && aVar.getEffectData() != null && aVar.getEffectData().isClickButtonVisible()) {
                    if (aVar.getEffectData().isShakeVisible()) {
                        viewGroup.setVisibility(8);
                    } else if (obj != null && !TextUtils.isEmpty(obj.toString())) {
                        viewGroup.setVisibility(0);
                        ((MBSplashClickView) viewGroup).initView(obj.toString());
                    }
                } else {
                    viewGroup.setVisibility(8);
                }
            }
            if (viewGroup instanceof MBSplashShakeView) {
                if (aVar != null && aVar.getEffectData() != null && aVar.getEffectData().isShakeVisible()) {
                    if (obj == null || TextUtils.isEmpty(obj.toString())) {
                        return;
                    }
                    viewGroup.setVisibility(0);
                    ((MBSplashShakeView) viewGroup).initView(obj.toString());
                    return;
                }
                viewGroup.setVisibility(8);
            }
        }
    }

    private void a(com.mbridge.msdk.dycreator.viewobserver.b bVar, int i10) {
        com.mbridge.msdk.dycreator.viewobserver.c cVar = this.f26423b;
        if (cVar != null) {
            cVar.a(bVar, i10);
        }
    }

    private void a(com.mbridge.msdk.dycreator.viewobserver.e eVar, int i10) {
        com.mbridge.msdk.dycreator.viewobserver.f fVar = this.f26424c;
        if (fVar != null) {
            fVar.a(eVar, i10);
        }
    }

    private void a(com.mbridge.msdk.dycreator.viewobserver.g gVar, int i10) {
        h hVar = this.f26425d;
        if (hVar != null) {
            hVar.a(gVar, i10);
        }
    }

    public void a(View view) {
        if (view != null) {
            try {
                if (view instanceof InterBase) {
                    String actionDes = ((InterBase) view).getActionDes();
                    if (!TextUtils.isEmpty(actionDes)) {
                        if (actionDes.startsWith("click")) {
                            a(new d(view), view.getId());
                        } else if (!actionDes.equals("move") && !actionDes.equals("long_click")) {
                            actionDes.equals("wobble");
                        }
                    }
                }
            } catch (Exception e10) {
                p0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    public synchronized void b() {
        try {
            com.mbridge.msdk.dycreator.viewobserver.c cVar = this.f26423b;
            if (cVar != null) {
                cVar.a();
            }
            com.mbridge.msdk.dycreator.viewobserver.d dVar = this.f26422a;
            if (dVar != null) {
                dVar.a();
            }
            com.mbridge.msdk.dycreator.viewobserver.f fVar = this.f26424c;
            if (fVar != null) {
                fVar.a();
            }
            if (this.f26426e != null) {
                this.f26426e = null;
            }
            if (this.f26427f != null) {
                this.f26427f = null;
            }
            if (f26421g != null) {
                f26421g = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(InterBase interBase, Object obj) {
        if (interBase == null || obj == null) {
            return;
        }
        String effectDes = interBase.getEffectDes();
        if (TextUtils.isEmpty(effectDes)) {
            return;
        }
        try {
            if (interBase instanceof ViewGroup) {
                a((ViewGroup) interBase, (Object) effectDes, (com.mbridge.msdk.dycreator.viewdata.base.a) obj);
            } else if (interBase instanceof View) {
                a((View) interBase, effectDes, obj);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(ViewGroup viewGroup, Object obj, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        if (obj == null || !(obj instanceof String)) {
            return;
        }
        if (obj.equals("wobble") && (viewGroup instanceof MBSplashShakeView)) {
            if (aVar.getEffectData().isShakeVisible()) {
                if (this.f26427f != null) {
                    com.mbridge.msdk.shake.a.a().b(this.f26427f);
                }
                com.mbridge.msdk.shake.a.a().a(a((View) viewGroup, (MBSplashData) aVar));
            } else if (this.f26427f != null) {
                com.mbridge.msdk.shake.a.a().b(this.f26427f);
            }
        }
        if (obj.equals("visible") && (viewGroup instanceof MBApkInfoView)) {
            if (aVar.getEffectData().isApkInfoVisible()) {
                if ((aVar instanceof MBSplashData) && !TextUtils.isEmpty(((MBSplashData) aVar).getAppInfo())) {
                    viewGroup.setVisibility(0);
                } else {
                    viewGroup.setVisibility(4);
                }
            } else {
                viewGroup.setVisibility(8);
            }
        }
        obj.equals("anim");
    }

    private void a(View view, Object obj, Object obj2) {
        int i10;
        boolean z10;
        if (obj == null || !(obj instanceof String)) {
            return;
        }
        com.mbridge.msdk.dycreator.viewdata.base.a aVar = (com.mbridge.msdk.dycreator.viewdata.base.a) obj2;
        if (obj.equals("countdown") && view != null && (view instanceof TextView) && aVar != null) {
            TextView textView = (TextView) view;
            String str = (String) textView.getText();
            String p10 = l0.p(view.getContext());
            DyOption effectData = aVar.getEffectData();
            if (effectData != null) {
                boolean isCanSkip = effectData.isCanSkip();
                i10 = effectData.getCountDownTime();
                z10 = isCanSkip;
            } else {
                i10 = 5;
                z10 = false;
            }
            textView.setText(com.mbridge.msdk.dycreator.utils.d.a(z10, i10, str, p10));
            aVar.getEffectData().setDyCountDownListenerWrapper(new e(z10, str, p10, view));
        }
        obj.equals("anim");
        if (obj.equals("visible")) {
            if (view instanceof MBFeedBack) {
                if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
                    view.setVisibility(0);
                } else {
                    view.setVisibility(8);
                }
            }
            if (!(view instanceof MBLogoTextView) || aVar == null || aVar.getEffectData() == null || aVar.getEffectData().isLogoVisible()) {
                return;
            }
            ((MBLogoTextView) view).setCompoundDrawables(null, null, null, null);
        }
    }

    private void a(View view, Object obj, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        if (view == null || obj == null) {
            return;
        }
        try {
            if (view instanceof TextView) {
                try {
                    ((TextView) view).setText(String.valueOf(obj).replace("\\n", "\n"));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else if (view instanceof ImageView) {
                if (obj instanceof Integer) {
                    ((ImageView) view).setImageResource(((Integer) obj).intValue());
                }
                if (obj instanceof String) {
                    com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(obj.toString(), new f(aVar, view));
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, Object obj) {
        if (view == null || obj == null || !(obj instanceof com.mbridge.msdk.dycreator.viewdata.base.a)) {
            return;
        }
        view.setOnClickListener(new com.mbridge.msdk.dycreator.binding.a((com.mbridge.msdk.dycreator.viewdata.base.a) obj));
    }

    public void a(BaseViewModel baseViewModel) {
        this.f26426e = baseViewModel;
        if (baseViewModel != null) {
            baseViewModel.setClickSubject(this.f26423b);
            this.f26426e.setConcreteSubject(this.f26422a);
            this.f26426e.setEffectSubject(this.f26424c);
            this.f26426e.setReportSubject(this.f26425d);
        }
    }

    private com.mbridge.msdk.shake.b a(View view, MBSplashData mBSplashData) {
        if (mBSplashData != null) {
            try {
                DyOption dyOption = mBSplashData.getDyOption();
                if (dyOption != null && dyOption.isShakeVisible() && this.f26427f == null) {
                    this.f26427f = new g(dyOption.getShakeStrenght(), dyOption.getShakeTime() * 1000, view, mBSplashData);
                }
            } catch (Exception e10) {
                p0.b("MBDataBinding", e10.getMessage());
            }
        }
        return this.f26427f;
    }
}
