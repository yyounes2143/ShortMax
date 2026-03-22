package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import android.content.Context;
import java.util.Date;
/* loaded from: classes2.dex */
public class CognitoDevice {

    /* renamed from: a  reason: collision with root package name */
    private final String f5404a;

    /* renamed from: b  reason: collision with root package name */
    private CognitoUserAttributes f5405b;

    /* renamed from: c  reason: collision with root package name */
    private final Date f5406c;

    /* renamed from: d  reason: collision with root package name */
    private Date f5407d;

    /* renamed from: e  reason: collision with root package name */
    private Date f5408e;

    /* renamed from: f  reason: collision with root package name */
    private final CognitoUser f5409f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f5410g;

    public CognitoDevice(String str, CognitoUserAttributes cognitoUserAttributes, Date date, Date date2, Date date3, CognitoUser cognitoUser, Context context) {
        this.f5404a = str;
        this.f5405b = cognitoUserAttributes;
        this.f5406c = date;
        this.f5407d = date2;
        this.f5408e = date3;
        this.f5409f = cognitoUser;
        this.f5410g = context;
    }
}
