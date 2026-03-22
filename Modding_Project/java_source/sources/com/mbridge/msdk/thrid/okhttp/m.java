package com.mbridge.msdk.thrid.okhttp;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
/* compiled from: Dns.java */
/* loaded from: classes6.dex */
public interface m {

    /* renamed from: a  reason: collision with root package name */
    public static final m f29981a = new a();

    /* compiled from: Dns.java */
    /* loaded from: classes6.dex */
    static class a implements m {
        a() {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.m
        public List<InetAddress> a(String str) throws UnknownHostException {
            if (str != null) {
                try {
                    return Arrays.asList(InetAddress.getAllByName(str));
                } catch (NullPointerException e10) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + str);
                    unknownHostException.initCause(e10);
                    throw unknownHostException;
                }
            }
            throw new UnknownHostException("hostname == null");
        }
    }

    List<InetAddress> a(String str) throws UnknownHostException;
}
