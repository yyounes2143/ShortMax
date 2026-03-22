package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.facebook.ads.redexgen.X.35 */
/* loaded from: assets/audience_network.dex */
public class AnonymousClass35 {
    public static byte[] A0R;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public HashMap<C2762oH, C2757oC> A0G;
    public HashSet<Integer> A0H;
    public List<String> A0I;
    public List<String> A0J;
    public List<String> A0K;
    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D56211926, support language flag in video track")
    public List<String> A0L;
    public List<String> A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;

    static {
        A0P();
    }

    public static String A0H(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0R, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 34);
        }
        return new String(copyOfRange);
    }

    public static void A0P() {
        A0R = new byte[]{63, 61, 44, 40, 53, 51, 50, 53, 50, 59};
    }

    @Deprecated
    public AnonymousClass35() {
        this.A06 = Integer.MAX_VALUE;
        this.A05 = Integer.MAX_VALUE;
        this.A04 = Integer.MAX_VALUE;
        this.A03 = Integer.MAX_VALUE;
        this.A0F = Integer.MAX_VALUE;
        this.A0E = Integer.MAX_VALUE;
        this.A0Q = true;
        this.A0M = C2393i1.A01();
        this.A0D = 0;
        this.A0L = C2393i1.A01();
        this.A0I = C2393i1.A01();
        this.A0B = 0;
        this.A02 = Integer.MAX_VALUE;
        this.A01 = Integer.MAX_VALUE;
        this.A0J = C2393i1.A01();
        this.A0K = C2393i1.A01();
        this.A0C = 0;
        this.A00 = 0;
        this.A0P = false;
        this.A0O = false;
        this.A0N = false;
        this.A0G = new HashMap<>();
        this.A0H = new HashSet<>();
    }

    public AnonymousClass35(Context context) {
        this();
        A0n(context);
        A0o(context, true);
    }

    public AnonymousClass35(Bundle bundle) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        List A01;
        String str25;
        str = C2755oA.A0e;
        this.A06 = bundle.getInt(str, C2755oA.A0U.A06);
        str2 = C2755oA.A0d;
        this.A05 = bundle.getInt(str2, C2755oA.A0U.A05);
        str3 = C2755oA.A0c;
        this.A04 = bundle.getInt(str3, C2755oA.A0U.A04);
        str4 = C2755oA.A0b;
        this.A03 = bundle.getInt(str4, C2755oA.A0U.A03);
        str5 = C2755oA.A0i;
        this.A0A = bundle.getInt(str5, C2755oA.A0U.A0A);
        str6 = C2755oA.A0h;
        this.A09 = bundle.getInt(str6, C2755oA.A0U.A09);
        this.A08 = bundle.getInt(C2755oA.A0n(), C2755oA.A0U.A08);
        str7 = C2755oA.A0f;
        this.A07 = bundle.getInt(str7, C2755oA.A0U.A07);
        str8 = C2755oA.A0v;
        this.A0F = bundle.getInt(str8, C2755oA.A0U.A0F);
        str9 = C2755oA.A0t;
        this.A0E = bundle.getInt(str9, C2755oA.A0U.A0E);
        str10 = C2755oA.A0u;
        this.A0Q = bundle.getBoolean(str10, C2755oA.A0U.A0Q);
        str11 = C2755oA.A0p;
        this.A0M = AbstractC1252Am.A07((String[]) AbstractC2453j1.A00(bundle.getStringArray(str11), new String[0]));
        str12 = C2755oA.A0q;
        this.A0D = bundle.getInt(str12, C2755oA.A0U.A0D);
        str13 = C2755oA.A0o;
        String[] preferredVideoLanguages1 = (String[]) AbstractC2453j1.A00(bundle.getStringArray(str13), new String[0]);
        this.A0L = A0G(preferredVideoLanguages1);
        str14 = C2755oA.A0j;
        String[] stringArray = bundle.getStringArray(str14);
        String[] preferredVideoLanguages12 = new String[0];
        this.A0I = A0G((String[]) AbstractC2453j1.A00(stringArray, preferredVideoLanguages12));
        str15 = C2755oA.A0l;
        this.A0B = bundle.getInt(str15, C2755oA.A0U.A0B);
        str16 = C2755oA.A0a;
        this.A02 = bundle.getInt(str16, C2755oA.A0U.A02);
        str17 = C2755oA.A0Z;
        this.A01 = bundle.getInt(str17, C2755oA.A0U.A01);
        str18 = C2755oA.A0k;
        String[] stringArray2 = bundle.getStringArray(str18);
        String[] preferredVideoLanguages13 = new String[0];
        this.A0J = AbstractC1252Am.A07((String[]) AbstractC2453j1.A00(stringArray2, preferredVideoLanguages13));
        str19 = C2755oA.A0m;
        String[] stringArray3 = bundle.getStringArray(str19);
        String[] preferredVideoLanguages14 = new String[0];
        this.A0K = A0G((String[]) AbstractC2453j1.A00(stringArray3, preferredVideoLanguages14));
        str20 = C2755oA.A0n;
        this.A0C = bundle.getInt(str20, C2755oA.A0U.A0C);
        this.A00 = bundle.getInt(C2755oA.A0e(), C2755oA.A0U.A00);
        str21 = C2755oA.A0s;
        this.A0P = bundle.getBoolean(str21, C2755oA.A0U.A0P);
        str22 = C2755oA.A0X;
        this.A0O = bundle.getBoolean(str22, C2755oA.A0U.A0O);
        str23 = C2755oA.A0W;
        this.A0N = bundle.getBoolean(str23, C2755oA.A0U.A0N);
        str24 = C2755oA.A0r;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(str24);
        if (parcelableArrayList == null) {
            A01 = C2393i1.A01();
        } else {
            A01 = C3S.A01(C2757oC.A02, parcelableArrayList);
        }
        this.A0G = new HashMap<>();
        for (int i10 = 0; i10 < A01.size(); i10++) {
            C2757oC c2757oC = (C2757oC) A01.get(i10);
            this.A0G.put(c2757oC.A00, c2757oC);
        }
        str25 = C2755oA.A0V;
        int[] iArr = (int[]) AbstractC2453j1.A00(bundle.getIntArray(str25), new int[0]);
        this.A0H = new HashSet<>();
        for (int i11 : iArr) {
            this.A0H.add(Integer.valueOf(i11));
        }
    }

    public AnonymousClass35(C2755oA c2755oA) {
        A0R(c2755oA);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<java.lang.String> */
    public static AbstractC1252Am<String> A0G(String[] strArr) {
        C10281h A01 = AbstractC1252Am.A01();
        for (String str : (String[]) C3M.A01(strArr)) {
            A01.A04(AbstractC10974a.A0k((String) C3M.A01(str)));
        }
        return A01.A05();
    }

    private void A0Q(Context context) {
        CaptioningManager captioningManager;
        if ((AbstractC10974a.A02 < 23 && Looper.myLooper() == null) || (captioningManager = (CaptioningManager) context.getSystemService(A0H(0, 10, 126))) == null || !captioningManager.isEnabled()) {
            return;
        }
        this.A0C = 1088;
        Locale locale = captioningManager.getLocale();
        if (locale != null) {
            this.A0K = AbstractC1252Am.A04(AbstractC10974a.A0o(locale));
        }
    }

    @EnsuresNonNull({"preferredVideoMimeTypes", "preferredAudioLanguages", "preferredAudioMimeTypes", "preferredTextLanguages", "overrides", "disabledTrackTypes"})
    private void A0R(C2755oA c2755oA) {
        this.A06 = c2755oA.A06;
        this.A05 = c2755oA.A05;
        this.A04 = c2755oA.A04;
        this.A03 = c2755oA.A03;
        this.A0A = c2755oA.A0A;
        this.A09 = c2755oA.A09;
        this.A08 = c2755oA.A08;
        this.A07 = c2755oA.A07;
        this.A0F = c2755oA.A0F;
        this.A0E = c2755oA.A0E;
        this.A0Q = c2755oA.A0Q;
        this.A0M = c2755oA.A0M;
        this.A0D = c2755oA.A0D;
        this.A0L = c2755oA.A0L;
        this.A0I = c2755oA.A0I;
        this.A0B = c2755oA.A0B;
        this.A02 = c2755oA.A02;
        this.A01 = c2755oA.A01;
        this.A0J = c2755oA.A0J;
        this.A0K = c2755oA.A0K;
        this.A0C = c2755oA.A0C;
        this.A00 = c2755oA.A00;
        this.A0P = c2755oA.A0P;
        this.A0O = c2755oA.A0O;
        this.A0N = c2755oA.A0N;
        this.A0H = new HashSet<>(c2755oA.A0H);
        this.A0G = new HashMap<>(c2755oA.A0G);
    }

    public AnonymousClass35 A0W(C2755oA c2755oA) {
        A0R(c2755oA);
        return this;
    }

    public AnonymousClass35 A0m(int i10, int i11, boolean z10) {
        this.A0F = i10;
        this.A0E = i11;
        this.A0Q = z10;
        return this;
    }

    public AnonymousClass35 A0n(Context context) {
        if (AbstractC10974a.A02 >= 19) {
            A0Q(context);
        }
        return this;
    }

    public AnonymousClass35 A0o(Context context, boolean z10) {
        Point viewportSize = AbstractC10974a.A0W(context);
        return A0m(viewportSize.x, viewportSize.y, z10);
    }

    public C2755oA A0p() {
        return new C2755oA(this);
    }
}
