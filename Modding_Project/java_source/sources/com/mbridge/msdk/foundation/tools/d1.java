package com.mbridge.msdk.foundation.tools;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
/* compiled from: ViewCoveredUtils.java */
/* loaded from: classes5.dex */
public class d1 {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f27418a = false;

    private static int a(View view, ViewGroup viewGroup) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            if (viewGroup.getChildAt(i10) == view) {
                return i10;
            }
        }
        return -1;
    }

    private static boolean a(View view, View view2, float f10) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        Rect rect2 = new Rect();
        view2.getGlobalVisibleRect(rect2);
        Rect rect3 = new Rect();
        if (rect3.setIntersect(rect, rect2)) {
            int width = rect3.width() * rect3.height();
            int width2 = rect.width() * rect.height();
            int measuredWidth = view.getMeasuredWidth() * view.getMeasuredHeight();
            if (f10 == 0.0f) {
                return width2 < measuredWidth || width >= measuredWidth;
            }
            float f11 = measuredWidth * f10;
            int i10 = (width > f11 ? 1 : (width == f11 ? 0 : -1));
            if (i10 >= 0) {
                return true;
            }
            int i11 = width2 - width;
            return width + i11 >= measuredWidth ? i10 > 0 : ((float) i11) <= f11;
        }
        return false;
    }

    private static boolean a(View view, ViewGroup viewGroup, float f10) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            p0.b("ViewUtils", "View Judge : Start Loop");
            View childAt = viewGroup.getChildAt(i10);
            if (childAt.getVisibility() == 0 && a(view, childAt, f10)) {
                if ((childAt instanceof WebView) && childAt.getVisibility() == 0) {
                    p0.b("ViewUtils", "View Judge : View Covered by WebView.");
                    f27418a = true;
                }
                if (a(childAt)) {
                    p0.b("ViewUtils", "View Judge : View Covered and Cover ViewGroup is not transparent.");
                    f27418a = true;
                }
                if (f27418a) {
                    break;
                } else if (childAt instanceof ViewGroup) {
                    a(view, (ViewGroup) childAt, f10);
                }
            }
        }
        return f27418a;
    }

    public static boolean a(View view, int i10) {
        if (view == null) {
            return true;
        }
        if (view.getVisibility() != 0) {
            p0.b("ViewUtils", "View Judge : View's not visible.");
            return true;
        }
        if (view.getAlpha() < 0.5f) {
            p0.b("ViewUtils", "View Judge : View's alpha must set up 50%.");
            return true;
        } else if (view.getParent() == null) {
            p0.b("ViewUtils", "View Judge : view has no parent");
            return true;
        } else if (view.getParent() != null && (view.getParent() instanceof ViewGroup) && ((ViewGroup) view.getParent()).getVisibility() != 0) {
            p0.b("ViewUtils", "View Judge : View's container is not visible.");
            return true;
        } else {
            Rect rect = new Rect();
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
            float f10 = i10 == 1 ? 0.0f : 0.5f;
            boolean z10 = ((float) ((rect.bottom - rect.top) * (rect.right - rect.left))) > ((float) (view.getMeasuredHeight() * view.getMeasuredWidth())) * f10;
            boolean z11 = globalVisibleRect && z10;
            p0.b("ViewUtils", "View Judge : partVisible is " + globalVisibleRect + " halfPercentVisible is " + z10);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("View Judge : totalViewVisible is ");
            sb2.append(z11);
            p0.b("ViewUtils", sb2.toString());
            if (z11) {
                ViewGroup viewGroup = view;
                while (viewGroup.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
                    int a10 = a(viewGroup, viewGroup2);
                    for (int i11 = a10 + 1; i11 < viewGroup2.getChildCount(); i11++) {
                        View childAt = viewGroup2.getChildAt(i11);
                        if (childAt.getVisibility() == 0) {
                            boolean a11 = a(view, childAt, f10);
                            p0.b("ViewUtils", "View Judge : " + a10 + "  intersects " + a11 + " currentParent " + viewGroup2 + "currentView " + childAt);
                            if (a11) {
                                if (childAt instanceof ViewGroup) {
                                    ViewGroup viewGroup3 = (ViewGroup) childAt;
                                    if (viewGroup3.getChildCount() > 0) {
                                        p0.b("ViewUtils", "View Judge : Covered by ViewGroup.");
                                        boolean a12 = a(view, viewGroup3, f10);
                                        f27418a = false;
                                        if (a12) {
                                            return true;
                                        }
                                    }
                                }
                                if (a(childAt)) {
                                    p0.b("ViewUtils", "View Judge : View Covered and Cover View is not transparent.");
                                    return true;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    viewGroup = viewGroup2;
                }
                p0.b("ViewUtils", "View Judge : Well done, View is not covered.");
                return false;
            }
            return true;
        }
    }

    public static boolean a(View view) {
        if (view == null) {
            return true;
        }
        if (!((view.getTag() instanceof String) && "mb_wm".equals(view.getTag())) && view.getAlpha() > 0.5f) {
            return view.getBackground() == null || view.getBackground().getAlpha() > 127;
        }
        return false;
    }
}
