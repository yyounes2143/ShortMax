package com.huawei.hms.common;
/* loaded from: classes5.dex */
public enum HmsCheckedState {
    UNCHECKED(0),
    NOT_NEED_UPDATE(1),
    NEED_UPDATE(2);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f21952a;

    HmsCheckedState(int i10) {
        this.f21952a = i10;
    }

    public int getState() {
        return this.f21952a;
    }
}
