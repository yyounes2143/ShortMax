package com.google.zxing;

import com.google.zxing.oned.Code128Writer;
import java.util.Map;
import u9.d;
import u9.f;
import u9.h;
import u9.i;
import u9.j;
import u9.m;
import u9.q;
/* compiled from: MultiFormatWriter.java */
/* loaded from: classes5.dex */
public final class b implements c {

    /* compiled from: MultiFormatWriter.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f21712a;

        static {
            int[] iArr = new int[BarcodeFormat.values().length];
            f21712a = iArr;
            try {
                iArr[BarcodeFormat.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21712a[BarcodeFormat.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21712a[BarcodeFormat.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21712a[BarcodeFormat.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f21712a[BarcodeFormat.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f21712a[BarcodeFormat.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f21712a[BarcodeFormat.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f21712a[BarcodeFormat.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f21712a[BarcodeFormat.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f21712a[BarcodeFormat.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f21712a[BarcodeFormat.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f21712a[BarcodeFormat.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f21712a[BarcodeFormat.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    @Override // com.google.zxing.c
    public q9.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        c iVar;
        switch (a.f21712a[barcodeFormat.ordinal()]) {
            case 1:
                iVar = new i();
                break;
            case 2:
                iVar = new q();
                break;
            case 3:
                iVar = new h();
                break;
            case 4:
                iVar = new m();
                break;
            case 5:
                iVar = new x9.a();
                break;
            case 6:
                iVar = new d();
                break;
            case 7:
                iVar = new f();
                break;
            case 8:
                iVar = new Code128Writer();
                break;
            case 9:
                iVar = new j();
                break;
            case 10:
                iVar = new v9.a();
                break;
            case 11:
                iVar = new u9.b();
                break;
            case 12:
                iVar = new s9.a();
                break;
            case 13:
                iVar = new o9.a();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(barcodeFormat)));
        }
        return iVar.a(str, barcodeFormat, i10, i11, map);
    }
}
