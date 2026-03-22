package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.g7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2968g7 extends N9 {

    /* renamed from: y  reason: collision with root package name */
    public final Y6 f24768y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2968g7(String url, Y6 data) {
        super(ShareTarget.METHOD_POST, url, (C3198ue) null, true, (InterfaceC3269z5) null, "application/json", 64);
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(data, "data");
        this.f24768y = data;
    }

    public static String a(String str) {
        File file = new File(str);
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb2.append(readLine);
                sb2.append('\n');
            }
            bufferedReader.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @Override // com.inmobi.media.N9
    public final void f() {
        super.f();
        this.f23904t = false;
        this.f23905u = false;
        this.f23908x = false;
        try {
            this.f23896l = new JSONObject(a(this.f24768y.f24396a));
        } catch (FileNotFoundException unused) {
            P9 response = new P9();
            response.f23982d = new I9(EnumC3093o4.f25105s, "File - " + this.f24768y.f24396a + " not found");
            Intrinsics.checkNotNullParameter(response, "response");
            this.f23898n = response;
        } catch (IOException unused2) {
            P9 response2 = new P9();
            response2.f23982d = new I9(EnumC3093o4.f25105s, "IOException while reading file - " + this.f24768y.f24396a);
            Intrinsics.checkNotNullParameter(response2, "response");
            this.f23898n = response2;
        } catch (JSONException unused3) {
            P9 response3 = new P9();
            response3.f23982d = new I9(EnumC3093o4.f25105s, "JSON exception while parsing file - " + this.f24768y.f24396a);
            Intrinsics.checkNotNullParameter(response3, "response");
            this.f23898n = response3;
        }
    }
}
