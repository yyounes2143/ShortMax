package com.mbridge.msdk.foundation.controller.authoritycontroller;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
/* compiled from: BaseAuthorityInfoBean.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected int f26704a;

    /* renamed from: b  reason: collision with root package name */
    protected int f26705b;

    /* renamed from: c  reason: collision with root package name */
    protected int f26706c;

    /* renamed from: d  reason: collision with root package name */
    protected int f26707d;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i10) {
        this.f26704a = i10;
        this.f26705b = i10;
        this.f26706c = i10;
    }

    public void authDeviceIdStatus(int i10) {
        this.f26705b = i10;
    }

    public void authGenDataStatus(int i10) {
        this.f26704a = i10;
    }

    public void authOtherDataStatus(int i10) {
        this.f26707d = i10;
    }

    public void authSerialIdStatus(int i10) {
        this.f26706c = i10;
    }

    public int getAuthDeviceIdStatus() {
        return this.f26705b;
    }

    public int getAuthGenDataStatus() {
        return this.f26704a;
    }

    public int getAuthSerialIdStatus() {
        return this.f26706c;
    }

    public int getOtherDataStatus() {
        return this.f26707d;
    }

    public int getStatusByKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1262204598:
                    if (str.equals(MBridgeConstans.AUTHORITY_SERIAL_ID)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -663505496:
                    if (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1026848797:
                    if (str.equals(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1564683028:
                    if (str.equals(MBridgeConstans.AUTHORITY_OTHER)) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return this.f26706c;
                case 1:
                    return this.f26705b;
                case 2:
                    return this.f26704a;
                case 3:
                    return this.f26707d;
            }
        }
        return 1;
    }
}
