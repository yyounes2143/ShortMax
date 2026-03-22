package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public interface zzcfg extends com.google.android.gms.ads.internal.client.zza, zzded, zzcex, zzbna, zzcgj, zzcgn, zzbnm, zzazd, zzcgq, com.google.android.gms.ads.internal.zzn, zzcgt, zzcgu, zzccb, zzcgv {
    boolean canGoBack();

    void destroy();

    @Override // com.google.android.gms.internal.ads.zzcgn, com.google.android.gms.internal.ads.zzccb
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    boolean isAttachedToWindow();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i10, int i11);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.zzccb
    void setBackgroundColor(int i10);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    @Override // com.google.android.gms.internal.ads.zzccb
    void zzC(zzcgi zzcgiVar);

    @Override // com.google.android.gms.internal.ads.zzcex
    zzfca zzD();

    Context zzE();

    @Override // com.google.android.gms.internal.ads.zzcgv
    View zzF();

    WebView zzG();

    WebViewClient zzH();

    @Override // com.google.android.gms.internal.ads.zzcgt
    zzavu zzI();

    zzbaq zzJ();

    zzbgd zzK();

    com.google.android.gms.ads.internal.overlay.zzm zzL();

    com.google.android.gms.ads.internal.overlay.zzm zzM();

    zzcgy zzN();

    @Override // com.google.android.gms.internal.ads.zzcgs
    zzchd zzO();

    zzedf zzP();

    zzedh zzQ();

    @Override // com.google.android.gms.internal.ads.zzcgj
    zzfcd zzR();

    zzfda zzS();

    com.google.common.util.concurrent.e zzT();

    String zzU();

    List zzV();

    void zzW(zzfca zzfcaVar, zzfcd zzfcdVar);

    void zzX();

    void zzY();

    void zzZ(int i10);

    void zzaA(String str, Predicate predicate);

    boolean zzaB();

    boolean zzaC();

    boolean zzaD(boolean z10, int i10);

    boolean zzaE();

    boolean zzaF();

    boolean zzaG();

    boolean zzaH();

    void zzaa();

    void zzab();

    void zzac(boolean z10);

    void zzad();

    void zzae(String str, String str2, String str3);

    void zzaf();

    void zzag(String str, zzbkf zzbkfVar);

    void zzah();

    void zzai(com.google.android.gms.ads.internal.overlay.zzm zzmVar);

    void zzaj(zzchd zzchdVar);

    void zzak(zzbaq zzbaqVar);

    void zzal(boolean z10);

    void zzam();

    void zzan(Context context);

    void zzao(boolean z10);

    void zzap(zzbgb zzbgbVar);

    void zzaq(boolean z10);

    void zzar(zzbgd zzbgdVar);

    void zzas(zzedf zzedfVar);

    void zzat(zzedh zzedhVar);

    void zzau(int i10);

    void zzav(boolean z10);

    void zzaw(com.google.android.gms.ads.internal.overlay.zzm zzmVar);

    void zzax(boolean z10);

    void zzay(boolean z10);

    void zzaz(String str, zzbkf zzbkfVar);

    @Override // com.google.android.gms.internal.ads.zzcgn, com.google.android.gms.internal.ads.zzccb
    Activity zzi();

    @Override // com.google.android.gms.internal.ads.zzccb
    com.google.android.gms.ads.internal.zza zzj();

    @Override // com.google.android.gms.internal.ads.zzccb
    zzbdr zzl();

    @Override // com.google.android.gms.internal.ads.zzcgu, com.google.android.gms.internal.ads.zzccb
    VersionInfoParcel zzm();

    @Override // com.google.android.gms.internal.ads.zzccb
    zzcgi zzq();

    @Override // com.google.android.gms.internal.ads.zzccb
    void zzt(String str, zzcdn zzcdnVar);
}
