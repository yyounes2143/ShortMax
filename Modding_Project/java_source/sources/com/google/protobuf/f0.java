package com.google.protobuf;
/* compiled from: OneofInfo.java */
/* loaded from: classes5.dex */
final class f0 {
    private final java.lang.reflect.Field caseField;

    /* renamed from: id  reason: collision with root package name */
    private final int f21704id;
    private final java.lang.reflect.Field valueField;

    public f0(int i10, java.lang.reflect.Field field, java.lang.reflect.Field field2) {
        this.f21704id = i10;
        this.caseField = field;
        this.valueField = field2;
    }

    public java.lang.reflect.Field getCaseField() {
        return this.caseField;
    }

    public int getId() {
        return this.f21704id;
    }

    public java.lang.reflect.Field getValueField() {
        return this.valueField;
    }
}
